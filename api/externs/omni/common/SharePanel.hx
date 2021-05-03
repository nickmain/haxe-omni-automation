// Automatically generated. Do not edit.

package omni.common;

@:native("SharePanel")
extern class SharePanel {
    var items: Array<epistem.typescript.Helpers.Union4<omni.common.URL, String, omni.common.Image, omni.common.FileWrapper>>;

    function new(items: Array<epistem.typescript.Helpers.Union4<omni.common.URL, String, omni.common.Image, omni.common.FileWrapper>>);

    function addItem(shareItem: epistem.typescript.Helpers.Union4<omni.common.URL, String, omni.common.Image, omni.common.FileWrapper>): Void;
    function addItems(shareItems: Array<epistem.typescript.Helpers.Union4<omni.common.URL, String, omni.common.Image, omni.common.FileWrapper>>): Void;
    function removeItem(shareItem: epistem.typescript.Helpers.Union4<omni.common.URL, String, omni.common.Image, omni.common.FileWrapper>): Void;
    function removeItems(shareItems: Array<epistem.typescript.Helpers.Union4<omni.common.URL, String, omni.common.Image, omni.common.FileWrapper>>): Void;
    function clearItems(): Void;
    function show(): Void;
}
