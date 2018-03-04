package samples;

import omni.automation.plugin.Builder;
import sys.io.File;

// Wrap the Haxe JS output in order to export it as an OmniAutomation plugin library
class MakeLibrary {

    public static function main() {
        trace("Building omniautomation library...");

        var builder = new Builder();

        builder.wrapLibrary(
            "./build/haxeCode.js",
            "./samples/helloworld.omnigrafflejs/Resources/haxeCode.js",
            "0.1"
        );
    }
}