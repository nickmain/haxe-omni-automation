// Automatically generated. Do not edit.

package omni.graffle;

@:native("SharePanel")
extern class SharePanel {
    var items: Array<epistem.typescript.Helpers.Union4<omni.graffle.URL, String, omni.graffle.Image, omni.graffle.FileWrapper>>;

    function new(items: Array<epistem.typescript.Helpers.Union4<omni.graffle.URL, String, omni.graffle.Image, omni.graffle.FileWrapper>>);

    function addItem(shareItem: epistem.typescript.Helpers.Union4<omni.graffle.URL, String, omni.graffle.Image, omni.graffle.FileWrapper>): Void;
    function addItems(shareItems: Array<epistem.typescript.Helpers.Union4<omni.graffle.URL, String, omni.graffle.Image, omni.graffle.FileWrapper>>): Void;
    function removeItem(shareItem: epistem.typescript.Helpers.Union4<omni.graffle.URL, String, omni.graffle.Image, omni.graffle.FileWrapper>): Void;
    function removeItems(shareItems: Array<epistem.typescript.Helpers.Union4<omni.graffle.URL, String, omni.graffle.Image, omni.graffle.FileWrapper>>): Void;
    function clearItems(): Void;
    function show(): Void;
}
