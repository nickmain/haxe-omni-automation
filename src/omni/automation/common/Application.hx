package omni.automation.common;

import haxe.extern.EitherType;
import omni.automation.common.URL;
import omni.automation.common.Error;
import omni.automation.common.Document;

@:native("app")
extern class Application {

    // Attempts to open the specified document and return a reference to it asynchronously.
    // If the document is already open, the reference is passed along.
    // Note that due to platform sandboxing restrictions, opening the document may fail
    // if the application doesn’t have currently permission to access the given URL.
    // The document, if any, that is associated with the calling script can be passed
    // along to help grant permission to open the new document.
    // The passed in function will be passed two argument.
    // The first will be either either the Document or an Error.
    // On success, the second argument is a Boolean specifying whether the document
    // was already open.
    static function openDocument(?from: Document, url: URL, completed: EitherType<Document,Error> -> Bool -> Void): Void;


    static var commandKeyDown (default,null): Bool;
    static var controlKeyDown (default,null): Bool;
    static var optionKeyDown (default,null): Bool;
    static var shiftKeyDown (default,null): Bool;

    static var platformName (default,null): String;

    // Application name.
    static var name (default,null): String;

    // Application version number.
    static var version (default,null): String;
}
