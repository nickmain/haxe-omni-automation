// Automatically generated. Do not edit.

package omni.graffle;

@:native("Portfolio")
extern class Portfolio {
    var canvases (default,never): Array<omni.graffle.Canvas>;
    var document (default,never): Null<omni.graffle.GraffleDocument>;
    var images (default,never): Array<omni.graffle.ImageReference>;

    function addCanvas(): Null<omni.graffle.Canvas>;
    function addImage(data: omni.common.Data): Null<omni.graffle.ImageReference>;
    function copyImage(image: omni.graffle.ImageReference): Null<omni.graffle.ImageReference>;
}
