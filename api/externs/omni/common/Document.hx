// Automatically generated. Do not edit.

package omni.common;

@:native("Document")
extern class Document {
    static function makeNew(resultFunction: Null<(Dynamic) -> Void>): js.lib.Promise<omni.common.Document>;
    static function makeNewAndShow(resultFunction: Null<(Dynamic) -> Void>): js.lib.Promise<omni.common.Document>;
    var canRedo (default,never): Bool;
    var canUndo (default,never): Bool;
    var fileType (default,never): Null<String>;
    var name (default,never): Null<String>;
    var writableTypes (default,never): Array<String>;

    function close(didCancel: Null<(Dynamic) -> Void>): Void;
    function save(): Void;
    function fileWrapper(type: Null<String>): omni.common.FileWrapper;
    function makeFileWrapper(baseName: String, type: Null<String>): js.lib.Promise<omni.common.FileWrapper>;
    function undo(): Void;
    function redo(): Void;
    function show(resultFunction: Null<(Dynamic) -> Void>): Void;
}
