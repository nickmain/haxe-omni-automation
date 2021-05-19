// Copyright © 2021, David N Main. All rights reserved.
// Licensed under the MIT License, see LICENSE file for details.

package epistem.typescript;

import haxe.Template;
import sys.io.File;
import sys.FileSystem;

using StringTools;

typedef HaxeName = {
    name: String,
    fullName: String,
    pkg: String,
    pkgParts: Array<String>
} 

class ExternGenerator {

    var rootDir: String;
    var haxeNames = new Map<String, HaxeName>();

    var definition: Definition;
    var packageName: String;
    var memberName: String; // for function specialization
    var argName: String; // for function specialization

    public function new(rootDir: String) {
        this.rootDir = rootDir;
    }

    public function generate(defs: Map<String, Definition>) {
        // pre-calc haxe names
        for(definition in defs) {
            haxeNames.set(definition.name, haxeName(definition.targetName));
        }

        for(definition in defs) {
            if(definition.shouldGenerate) generateDef(definition);
        }
    }

    public function generateDef(definition: Definition) {
        this.definition = definition;
        final name = haxeNames.get(definition.name);
        this.packageName = name.pkg;

        final dirname = rootDir + "/" + name.pkgParts.join("/");
        final filename = dirname + "/" + name.name + ".hx";

        if(! FileSystem.exists(dirname)) FileSystem.createDirectory(dirname);

        var superName: String = null;
        if(definition.superclass != null) {
            final sup = haxeNames.get(definition.superclass);
            if(sup == null) {
                superName = definition.superclass;
            }
            else {
                superName = (sup.pkg != name.pkg) ? sup.fullName : sup.name;
            }
        }

        final params = {
            pkg: name.pkg,
            name: name.name,
            nativeName: definition.nativeName,
            superName: superName,
            props: getProps(definition.members),
            classProps: getProps(definition.statics),
            funcs: getFuncs(definition.members),
            classFuncs: getFuncs(definition.statics),
            constructor: (definition.constructor != null) ?
                definition.constructor.map(argString).join(", ") :
                null
        };
        final template = new Template(fileTemplate);
        final source = template.execute(params);
        File.saveContent(filename, source);
    }    

    function getProps(members: Array<Definition.Member>): Dynamic {
        var props = new Array<Dynamic>();

        for(member in members) {
            switch member {
                case prop(name, readonly, type): {
                    this.memberName = name;
                    props.push({
                        name: name,
                        readonly: readonly,
                        type: typeString(type)
                    });
                }
                default: continue;
            }
        }

        return props;
    }

    function getFuncs(members: Array<Definition.Member>): Dynamic {
        var props = new Array<Dynamic>();

        for(member in members) {
            switch member {
                case func(name, args, type): {
                    this.memberName = name;
                    props.push({
                        name: name,
                        args: args.map(argString).join(", "),
                        type: (type != null) ? ': ${typeString(type)}' : ": Void"
                    });
                }
                default: continue;
            }
        }

        return props;
    }

    function argString(arg: Definition.Argument): String {
        this.argName = arg.name;
        return '${arg.name}: ${typeString(arg.type)}';
    }

    function typeString(type: Definition.Type): String {
        return switch type {
            case name("string")  : "String";
            case name("boolean") : "Bool";
            case name("Object")  : "Dynamic";
            case name("object")  : "Dynamic";
            case name("Promise") : "js.lib.Promise";
            case name("Array")   : "Array";
            case name("Date")    : "js.lib.Date";
            case name("Error")   : "js.lib.Error";
            case name("Function"): functionSpecialization();
            case name("number")  : "Float";
            case name(n)         : haxeNames.get(n).fullName;
            case nullable(t)     : 'Null<${typeString(t)}>';
            case generic(t, ps)  : '${typeString(t)}<${ps.map(typeString).join(",")}>';
            case union(types)    : unionTypeString(types);
        }
    }

    function unionTypeString(types: Array<Definition.Type>): String {
        return 'epistem.typescript.Helpers.Union${types.length}<${types.map(typeString).join(", ")}>';
    }

    function functionSpecialization(): String {
        return switch [definition.name, memberName, argName] {
            case ["Alert", "show"     , "callback"]: "(index: Float) -> Void";
            case ["Timer", "once"     , "action"  ]: "(Timer) -> Void";
            case ["Timer", "repeating", "action"  ]: "(Timer) -> Void";
            case ["Form" , "validate" , _         ]: "(Form) -> Null<Bool>";

            case ["Application", "openDocument", "completed"]: '(epistem.typescript.Helpers.Union2<omni.common.Document, js.lib.Error>, Bool) -> Void';
            
            default: "(Dynamic) -> Void";
        }
    }

    function haxeName(name: String): HaxeName {        
        final parts = name.split(".");
        var packageParts = new Array<String>();
        for(i in 0...(parts.length - 1)) {
            packageParts.push(parts[i].toLowerCase());
        }

        var className = parts.pop();
        final fullName = packageParts.join(".") + "." + className;
        final pkg = packageParts.join(".");

        if(className == "String") className = "StringField";

        return {
            name: className,
            fullName: fullName,
            pkg: pkg,
            pkgParts: packageParts
        };
    }

    final fileTemplate = 
"// Automatically generated. Do not edit.

package ::pkg::;

@:native(\"::nativeName::\")
extern class ::name::::if (superName != null):: extends ::superName::::end:: {::foreach classProps::
    static var ::name::::if readonly:: (default,never)::end::: ::type::;::end::::foreach classFuncs::
    static function ::name::(::args::)::type::;::end::::foreach props::
    var ::name::::if readonly:: (default,never)::end::: ::type::;::end::
::if (constructor != null)::
    function new(::constructor::);
::end::::foreach funcs::
    function ::name::(::args::)::type::;::end::
}
";

 }