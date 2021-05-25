// Copyright © 2021, David N Main. All rights reserved.
// Licensed under the MIT License, see LICENSE file for details.

package samples;

import sys.io.File;
import epistem.omni.plugin.SingleFilePlugin;

class MakePlugins {
    public static function main() {
        
        SingleFilePlugin.generate("plugins/test.omnigrafflejs",
            {
                actionClassName: "samples.HelloWorld",
                target: omnigraffle,
                author: "Nick Main",
                identifier: "isdfbhsd9890s8dfsjkdf",
                version: "0.1",
                description: "Hello world from Haxe",
                menuLabel: "Haxe Hello",
                paletteLabel: "HX Hello",
                includedHaxeJS: File.getContent("build/testAction.js"),
                imageName: "function"
            }
        );

        SingleFilePlugin.generate("plugins/hscript_test.omnigrafflejs",
            {
                actionClassName: "samples.HScriptTest",
                target: omnigraffle,
                author: "Nick Main",
                identifier: "HScriptTest239482349",
                version: "0.1",
                description: "HScript Testbed",
                menuLabel: "HScript",
                paletteLabel: "HScript",
                includedHaxeJS: File.getContent("build/hscriptAction.js"),
                imageName: "h.square"
            }
        );
    }
}