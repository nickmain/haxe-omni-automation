package omni.automation.common;

import omni.automation.common.Error;
import haxe.extern.EitherType;

@:native("Document")
extern class Document {

    // Create a new document, which can be populated with data and then presented.
    // On iOS, if the document is not presented by the time the resultFunction returns,
    // it will be closed. On macOS, the document will be left around and accessible to
    // the running script.
    // The resultFunction will be passed either the new document or an Error if there
    // was a problem creating the document.
    static function makeNew(resultFunction: (EitherType<Document,Error>) -> Void): Void;

    // Create a new document and presents it. The resultFunction will be passed either
    // the new document or an Error if there was a problem creating the document.
    static function makeNewAndShow(resultFunction: (EitherType<Document,Error>) -> Void): Void;


    // Whether there are currently any actions that can be redone.
    var canRedo (default,null): Bool;

    // Whether there are currently any actions that can be undone.
    var canUndo (default,null): Bool;

    // The file type identifier the document uses when saving, if set.
    var fileType (default,null): Null<String>;

    // Document name.
    var name (default,null): Null<String>;

    // A list of all of the file types that this document can be written as.
    var writableTypes (default,null): Array<String>;


    // Close this document. If for some reason the document cannot be closed,
    // the didCancel function may be called at some point in the future, with
    // the original document as the single argument.
    // For example, on the Mac the user may review unsaved changes and may cancel
    // the close operation. If the document is closed, the didCancel function
    // will not be called at all.
    function close(?didCancel: Document -> Void): Void;

    // Save this document.
    function save(): Void;

    // Returns a new FileWrapper representing the contents of the document formatted as the specified type, or its current fileType if a null is passed for the type.
    function fileWrapper(?type: String): FileWrapper;

    // Undo the last done action.
    function undo(): Void;

    // Redo the last undone action.
    function redo(): Void;

    // Presents the document, ordering the window forward on macOS,
    // and possibly closing the existing document and opening the new on on iOS.
    function show(?resultFunction: Void -> Void): Void;

}
