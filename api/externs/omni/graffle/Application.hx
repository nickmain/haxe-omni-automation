// Automatically generated. Do not edit.

package omni.graffle;

@:native("Application")
extern class Application {
    var buildVersion (default,never): omni.graffle.Version;
    var commandKeyDown (default,never): Bool;
    var controlKeyDown (default,never): Bool;
    var name (default,never): String;
    var optionKeyDown (default,never): Bool;
    var platformName (default,never): String;
    var shiftKeyDown (default,never): Bool;
    var stencils (default,never): Array<omni.graffle.Stencil>;
    var userVersion (default,never): omni.graffle.Version;
    var version (default,never): String;

    function openDocument(from: Null<omni.graffle.Document>, url: omni.graffle.URL, completed: (documentOrError: epistem.typescript.Helpers.Union2<omni.graffle.Document, js.lib.Error>, alreadyOpen: Bool) -> Void): Void;
}
