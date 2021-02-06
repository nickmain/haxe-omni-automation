// Automatically generated. Do not edit.

package omni.graffle;

@:native("Document")
extern class Document {
    static function makeNew(resultFunction: Null<js.lib.Function>): js.lib.Promise<omni.graffle.Document>;
    static function makeNewAndShow(resultFunction: Null<js.lib.Function>): js.lib.Promise<omni.graffle.Document>;
    var canRedo (default,never): Bool;
    var canUndo (default,never): Bool;
    var fileType (default,never): Null<String>;
    var name (default,never): Null<String>;
    var writableTypes (default,never): Array<String>;

    function close(didCancel: Null<js.lib.Function>): Void;
    function save(): Void;
    function fileWrapper(type: Null<String>): omni.graffle.FileWrapper;
    function makeFileWrapper(baseName: String, type: Null<String>): js.lib.Promise<omni.graffle.FileWrapper>;
    function undo(): Void;
    function redo(): Void;
    function show(resultFunction: Null<js.lib.Function>): Void;
}
