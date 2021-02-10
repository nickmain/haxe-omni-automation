// Automatically generated. Do not edit.

package omni.focus;

@:native("Document")
extern class Document {
    static function makeNew(resultFunction: Null<(Dynamic) -> Void>): js.lib.Promise<omni.focus.Document>;
    static function makeNewAndShow(resultFunction: Null<(Dynamic) -> Void>): js.lib.Promise<omni.focus.Document>;
    var canRedo (default,never): Bool;
    var canUndo (default,never): Bool;
    var fileType (default,never): Null<String>;
    var name (default,never): Null<String>;
    var writableTypes (default,never): Array<String>;

    function close(didCancel: Null<(Dynamic) -> Void>): Void;
    function save(): Void;
    function fileWrapper(type: Null<String>): omni.focus.FileWrapper;
    function makeFileWrapper(baseName: String, type: Null<String>): js.lib.Promise<omni.focus.FileWrapper>;
    function undo(): Void;
    function redo(): Void;
    function show(resultFunction: Null<(Dynamic) -> Void>): Void;
}
