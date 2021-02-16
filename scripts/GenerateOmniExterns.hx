// Copyright © 2021, David N Main. All rights reserved.
// Licensed under the MIT License, see LICENSE file for details.

import epistem.typescript.ExternGenerator;

class GenerateOmniExterns {
    public static function main() {
        trace("Generating externs for Omni typedefs...");
        
        trace("api/OmniGraffle.d.ts");
        final gen = new ExternGenerator();
        gen.rootDir = "api/externs";
        gen.packageName = "omni.graffle";
        gen.generate("api/OmniGraffle.d.ts");

        trace("api/OmniFocus.d.ts");
        final gen2 = new ExternGenerator();
        gen2.rootDir = "api/externs";
        gen2.packageName = "omni.focus";
        gen2.generate("api/OmniFocus.d.ts");

        trace("api/OmniOutliner.d.ts");
        final gen2 = new ExternGenerator();
        gen2.rootDir = "api/externs";
        gen2.packageName = "omni.outliner";
        gen2.generate("api/OmniOutliner.d.ts");

        trace("... done");
    }
}