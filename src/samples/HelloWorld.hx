package samples;

import omni.automation.graffle.Selection;

@:expose
class HelloWorld {
    static function helloWorld(selection: Selection) {
        for(solid in selection.solids) {
            solid.text = "Hello World !!!";
        }
    }

    static function main() {}
}
