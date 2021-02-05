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
            superName: superName
        };
        final template = new Template(fileTemplate);
        final source = template.execute(params);
        File.saveContent(filename, source);
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
extern class ::name::::if (superName != null):: extends ::superName::::end:: {

}
";
 }