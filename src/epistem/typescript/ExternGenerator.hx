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

    public var rootDir = "";
    public var packageName = "";

    public function new() {}

    public function generate(typeDefFile: String) {
        final parser = new Parser();
        parser.parse(File.read(typeDefFile));

        final defs = parser.definitions;
        for(key in defs.keys()) {
            final def = defs.get(key);
            generateDef(def);
        }
    }

    public function generateDef(definition: Definition) {
        final name = haxeName(definition.name);

        final dirname = rootDir + "/" + name.pkgParts.join("/");
        final filename = dirname + "/" + name.name + ".hx";

        if(! FileSystem.exists(dirname)) FileSystem.createDirectory(dirname);

        var superName: String = null;
        if(definition.superclass != null) {
            final sup = haxeName(definition.superclass);
            superName = (sup.pkg != name.pkg) ? sup.fullName : sup.name;
        }

        final params = {
            pkg: name.pkg,
            name: name.name,
            nativeName: definition.name,
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
        return '${arg.name}: ${typeString(arg.type)}';
    }

    function typeString(type: Definition.Type): String {
        switch type {
            case name("string"): return "String";
            case name("boolean"): return "Bool";
            case name("Object"): return "Dynamic";
            case name("object"): return "Dynamic";
            case name("Promise"): return "js.lib.Promise";
            case name("Array"): return "Array";
            case name("Date"): return "js.lib.Date";
            case name("Function"): return "js.lib.Function";
            case name("number"): return "Float";
            case name(n): return haxeName(n).fullName;
            case nullable(t): return 'Null<${typeString(t)}>';
            case generic(t, ps): return '${typeString(t)}<${ps.map(typeString).join(",")}>';
            case union(types): return unionTypeString(types);
        }
    }

    function unionTypeString(types: Array<Definition.Type>): String {
        return 'epistem.typescript.Helpers.Union${types.length}<${types.map(typeString).join(", ")}>';
    }

    function haxeName(name: String): HaxeName {
        final parts = name.split(".");
        var packageParts = packageName.split(".");
        for(i in 0...(parts.length - 1)) {
            packageParts.push(parts[i].toLowerCase());
        }

        final className = parts.pop();
        final fullName = packageParts.join(".") + "." + className;
        final pkg = packageParts.join(".");

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