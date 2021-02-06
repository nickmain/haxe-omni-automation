// Automatically generated. Do not edit.

package omni.focus;

@:native("Application")
extern class Application {
    var buildVersion (default,never): omni.focus.Version;
    var commandKeyDown (default,never): Bool;
    var controlKeyDown (default,never): Bool;
    var name (default,never): String;
    var optionKeyDown (default,never): Bool;
    var platformName (default,never): String;
    var shiftKeyDown (default,never): Bool;
    var userVersion (default,never): omni.focus.Version;
    var version (default,never): String;

    function openDocument(from: Null<omni.focus.Document>, url: omni.focus.URL, completed: js.lib.Function): Void;
}
