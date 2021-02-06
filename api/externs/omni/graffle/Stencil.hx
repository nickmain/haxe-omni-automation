// Automatically generated. Do not edit.

package omni.graffle;

@:native("Stencil")
extern class Stencil {
    var graphics (default,never): Array<omni.graffle.Graphic>;
    var images (default,never): Array<omni.graffle.ImageReference>;
    var isLoaded (default,never): Bool;
    var name (default,never): String;

    function load(completed: js.lib.Function): Void;
}
