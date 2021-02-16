// Automatically generated. Do not edit.

package omni.outliner;

@:native("Application")
extern class Application {
    var buildVersion (default,never): omni.outliner.Version;
    var commandKeyDown (default,never): Bool;
    var controlKeyDown (default,never): Bool;
    var name (default,never): String;
    var optionKeyDown (default,never): Bool;
    var platformName (default,never): String;
    var shiftKeyDown (default,never): Bool;
    var userVersion (default,never): omni.outliner.Version;
    var version (default,never): String;

    function openDocument(from: Null<omni.outliner.Document>, url: omni.outliner.URL, completed: (epistem.typescript.Helpers.Union2<omni.outliner.Document, js.lib.Error>, Bool) -> Void): Void;
}
