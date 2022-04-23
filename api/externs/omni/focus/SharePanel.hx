// Automatically generated. Do not edit.

package omni.focus;

@:native("SharePanel")
extern class SharePanel {
    var items: Array<epistem.typescript.Helpers.Union4<omni.focus.URL, String, omni.focus.Image, omni.focus.FileWrapper>>;

    function new(items: Array<epistem.typescript.Helpers.Union4<omni.focus.URL, String, omni.focus.Image, omni.focus.FileWrapper>>);

    function addItem(shareItem: epistem.typescript.Helpers.Union4<omni.focus.URL, String, omni.focus.Image, omni.focus.FileWrapper>): Void;
    function addItems(shareItems: Array<epistem.typescript.Helpers.Union4<omni.focus.URL, String, omni.focus.Image, omni.focus.FileWrapper>>): Void;
    function removeItem(shareItem: epistem.typescript.Helpers.Union4<omni.focus.URL, String, omni.focus.Image, omni.focus.FileWrapper>): Void;
    function removeItems(shareItems: Array<epistem.typescript.Helpers.Union4<omni.focus.URL, String, omni.focus.Image, omni.focus.FileWrapper>>): Void;
    function clearItems(): Void;
    function show(): Void;
}
