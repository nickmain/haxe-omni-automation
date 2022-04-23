// Automatically generated. Do not edit.

package omni.graffle;

@:native("Document")
extern class Document {
    static function makeNew(resultFunction: (document: epistem.typescript.Helpers.Union2<omni.graffle.Document, js.lib.Error>) -> Null<Void>): js.lib.Promise<omni.graffle.Document>;
    static function makeNewAndShow(resultFunction: (document: epistem.typescript.Helpers.Union2<omni.graffle.Document, js.lib.Error>) -> Null<Void>): js.lib.Promise<omni.graffle.Document>;
    var canRedo (default,never): Bool;
    var canUndo (default,never): Bool;
    var fileType (default,never): Null<String>;
    var name (default,never): Null<String>;
    var writableTypes (default,never): Array<String>;

    function close(didCancel: (document: omni.graffle.Document) -> Null<Void>): Void;
    function save(): Void;
    function fileWrapper(type: Null<String>): omni.graffle.FileWrapper;
    function makeFileWrapper(baseName: String, type: Null<String>): js.lib.Promise<omni.graffle.FileWrapper>;
    function undo(): Void;
    function redo(): Void;
    function show(completed: () -> Null<Void>): Void;
}
