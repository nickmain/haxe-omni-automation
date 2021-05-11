// Copyright © 2021, David N Main. All rights reserved.
// Licensed under the MIT License, see LICENSE file for details.

import haxe.display.Display.Define;
import epistem.typescript.Definition;
import epistem.typescript.Parser;
import epistem.typescript.ExternGenerator;

class GenerateOmniExterns {
    public static function main() {
        trace("Generating externs for Omni typedefs...");
        
        trace("OmniGraffle");
        final ogDefs = Parser.parseFile("api/OmniGraffle.d.ts");
        trace("OmniOutliner");
        final ooDefs = Parser.parseFile("api/OmniOutliner.d.ts");
        trace("OmniFocus");
        final ofDefs = Parser.parseFile("api/OmniFocus.d.ts");

        // separate out the type identifier constants so the common
        // classes can reference a common TypeIdentifier class and the
        // product specific static members can be separate
        separateTypeIdentifiers(ogDefs, "Graffle");
        separateTypeIdentifiers(ofDefs, "Focus");
        separateTypeIdentifiers(ooDefs, "Outliner");

        addPackage("omni.graffle", ogDefs);
        addPackage("omni.focus", ofDefs);
        addPackage("omni.outliner", ooDefs);

        // generate shared common defs separately
        final common = findCommonDefs([ogDefs, ooDefs, ofDefs]);
        addPackage("omni.common", common);
        new ExternGenerator("api/externs").generate(common);
        for(def in common) def.shouldGenerate = false;

        new ExternGenerator("api/externs").generate(ogDefs);
        new ExternGenerator("api/externs").generate(ofDefs);
        new ExternGenerator("api/externs").generate(ooDefs);

        trace("... done");
    }

    static function separateTypeIdentifiers(defs: Map<String, Definition>, prefix: String) {
        final typeIdentifier = defs.get("TypeIdentifier");

        // move static consts into a new product-specific definition
        final newName = prefix + "TypeIdentifier";
        final newDef = new Definition(newName);
        newDef.nativeName = "TypeIdentifier";
        newDef.statics = typeIdentifier.statics;
        typeIdentifier.statics = [];

        defs.set(newName, newDef);
    }

    static function addPackage(packageName: String, defs: Map<String, Definition>) {
        for(def in defs) {
            def.targetName = '${packageName}.${def.name}';
        }
    }

    // Find defs that match in all of the given definition sets
    // Replace the common defs in each set with a single shared instance
    static function findCommonDefs(defs: Array<Map<String, Definition>>): Map<String, Definition> {
        final common = new Map<String, Definition>();
        final first = defs[0];

        for(name in first.keys()) {
            final firstDef = first.get(name);
            final theseDefs = new Array<Definition>();
            theseDefs.push(firstDef);

            var allMatch = true;
            for(i in 1...defs.length) {
                final thisDef = defs[i].get(name);
                if(thisDef != null && firstDef.isSameAs(thisDef)) {
                    theseDefs.push(thisDef);
                }
            }

            if(theseDefs.length == defs.length) {
                common.set(name, firstDef);

                for(defSet in defs) {
                    defSet.set(name, firstDef);
                }
            }
        }

        return common;
    }
}