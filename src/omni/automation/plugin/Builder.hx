package omni.automation.plugin;

import sys.io.File;

// Utility for building a plugin package
class Builder {

    public function new() {
    }

    public function wrapLibrary(libraryCode: String, target: String, version: String) {
        var jsCode = File.getContent(libraryCode);

        var omniAutoLib = '
var _ = function() {
    var exports = new PlugIn.Library(new Version("${version}}"));

${jsCode}

    return exports;
}();
_;
';

        File.saveContent(target, omniAutoLib);
    }
}
