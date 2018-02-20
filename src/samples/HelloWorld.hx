package samples;

import omni.automation.graffle.Selection;

@:expose
class HelloWorld {
    public static function helloWorld(selection: Selection) {
        for(solid in selection.solids) {
            solid.text = "Hello World !!";
        }
    }

    public static function main() {}
}
