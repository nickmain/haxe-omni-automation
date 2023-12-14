// Automatically generated. Do not edit.

package omni.focus;

@:native("URL")
extern class URL {
    static var currentAppScheme (default,never): String;
    static var documentsDirectory (default,never): omni.focus.URL;
    static function choose(types: Array<String>): Null<omni.focus.URL>;
    static function chooseFolder(): Null<omni.focus.URL>;
    static function fromString(string: String, relativeToURL: Null<omni.focus.URL>): Null<omni.focus.URL>;
    static function fromPath(path: String, isDirectory: Bool, relativeToURL: Null<omni.focus.URL>): omni.focus.URL;
    static function tellScript(app: String, js: String, arg: Null<Dynamic>): Null<omni.focus.URL>;
    static function tellFunction(app: String, jsFunction: (Dynamic) -> Void, arg: Null<Dynamic>): Null<omni.focus.URL>;
    var absoluteString (default,never): String;
    var absoluteURL (default,never): omni.focus.URL;
    var baseURL (default,never): Null<omni.focus.URL>;
    var fragment (default,never): Null<String>;
    var hasDirectoryPath (default,never): Bool;
    var host (default,never): Null<String>;
    var isFileURL (default,never): Bool;
    var lastPathComponent (default,never): String;
    var password (default,never): Null<String>;
    var path (default,never): Null<String>;
    var pathComponents (default,never): Array<String>;
    var pathExtension (default,never): String;
    var port (default,never): Null<Float>;
    var query (default,never): Null<String>;
    var relativePath (default,never): Null<String>;
    var relativeString (default,never): String;
    var scheme (default,never): Null<String>;
    var string (default,never): String;
    var user (default,never): Null<String>;

    function fetch(success: (contents: omni.focus.Data) -> Void, failure: (error: js.lib.Error) -> Null<Void>): Void;
    function call(success: (Dynamic) -> Void, failure: Null<(Dynamic) -> Void>): Void;
    function open(): Void;
    function find(types: Array<omni.focus.TypeIdentifier>, recurse: Null<Bool>): js.lib.Promise<Array<omni.focus.URL>>;
    function toString(): String;
    function appendingPathComponent(component: String): omni.focus.URL;
    function appendingPathExtension(pathExtension: String): omni.focus.URL;
    function deletingPathExtension(): omni.focus.URL;
    function deletingLastPathComponent(): omni.focus.URL;
}
