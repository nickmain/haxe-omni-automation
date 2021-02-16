// Automatically generated. Do not edit.

package omni.outliner;

@:native("SharePanel")
extern class SharePanel {
    var items: Array<epistem.typescript.Helpers.Union4<omni.outliner.URL, String, omni.outliner.Image, omni.outliner.FileWrapper>>;

    function new(items: Array<epistem.typescript.Helpers.Union4<omni.outliner.URL, String, omni.outliner.Image, omni.outliner.FileWrapper>>);

    function addItem(shareItem: epistem.typescript.Helpers.Union4<omni.outliner.URL, String, omni.outliner.Image, omni.outliner.FileWrapper>): Void;
    function addItems(shareItems: Array<epistem.typescript.Helpers.Union4<omni.outliner.URL, String, omni.outliner.Image, omni.outliner.FileWrapper>>): Void;
    function removeItem(shareItem: epistem.typescript.Helpers.Union4<omni.outliner.URL, String, omni.outliner.Image, omni.outliner.FileWrapper>): Void;
    function removeItems(shareItems: Array<epistem.typescript.Helpers.Union4<omni.outliner.URL, String, omni.outliner.Image, omni.outliner.FileWrapper>>): Void;
    function clearItems(): Void;
    function show(): Void;
}
