package samples;

import sys.io.File;


class MakeLibrary {

    public static function main() {
        trace("Building omniautomation library...");
        var jsCode = File.getContent("./build/haxeCode.js");

        var omniAutoLib = '
var _ = function() {
    var exports = new PlugIn.Library(new Version("0.1"));

${jsCode}

    return exports;
}();
_;
';

        File.saveContent("./samples/helloworld.omnigrafflejs/Resources/haxeCode.js", omniAutoLib);
    }
}
