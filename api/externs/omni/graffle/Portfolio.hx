// Automatically generated. Do not edit.

package omni.graffle;

@:native("Portfolio")
extern class Portfolio {
    var app (default,never): omni.graffle.Application;
    var canvases (default,never): Array<omni.graffle.Canvas>;
    var console (default,never): omni.graffle.Console;
    var document (default,never): Null<omni.graffle.GraffleDocument>;
    var images (default,never): Array<omni.graffle.ImageReference>;

    function addCanvas(): Null<omni.graffle.Canvas>;
    function addImage(data: omni.graffle.Data): Null<omni.graffle.ImageReference>;
    function copyImage(image: omni.graffle.ImageReference): Null<omni.graffle.ImageReference>;
}
