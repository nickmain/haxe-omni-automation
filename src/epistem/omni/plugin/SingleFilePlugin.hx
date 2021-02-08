// Copyright © 2021, David N Main. All rights reserved.
// Licensed under the MIT License, see LICENSE file for details.

package epistem.omni.plugin;

import sys.io.File;
import haxe.Template;

enum abstract TargetType(String) {
    var omnigraffle;
    var omnifocus;
    var omniplan;
    var omnioutliner;
}

enum abstract TargetFileType(String) {
    var omnijs;
    var omnigrafflejs;
    var omnifocusjs;
    var omniplanjs;
    var omnioutlinerjs;
}

typedef Info =  {
    actionClassName: String,
    target: TargetType,
    author: String,
    identifier: String,
    version: String,
    description: String,
    menuLabel: String,
    paletteLabel: String,
    includedHaxeJS: String
}

// Generate a single-file plugin from a compiled Action subclass
class SingleFilePlugin {

    public static function generate(targetPluginFile: String, info: Info) {
        final tmplt = new Template(template);
        final js = tmplt.execute(info);
        File.saveContent(targetPluginFile, js);        
    }

    static final template = 
'/*{
	"type": "action",
	"targets": ["::target::"],
	"author": "::author::",
	"identifier": "::identifier::",
	"version": "::version::",
	"description": "::description::",
	"label": "::menuLabel::",
	"paletteLabel": "::paletteLabel::"
}*/

(() => {
    var exports = {};

    ::includedHaxeJS::
    
	const hxaction = new exports.::actionClassName::();
	const action = new PlugIn.Action(function(selection, sender){ hxaction.perform(selection, sender); });
	action.validate = function(selection, sender){ return hxaction.validate(selection, sender); };
	
	return action;
})();    
';
}