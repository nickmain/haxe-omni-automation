package org.epistem.omnigraffle.utilities;

import omni.automation.graffle.Selection;

@:expose
class Utilities {
    public static function textToShapes(selection: Selection) {
        TextLinesToShapes.textToShapes(selection);
    }

    public static function main() {}
}
