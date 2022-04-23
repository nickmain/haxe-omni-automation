// Automatically generated. Do not edit.

package omni.outliner;

@:native("URL")
extern class URL {
    static var currentAppScheme (default,never): String;
    static var documentsDirectory (default,never): omni.outliner.URL;
    static function choose(types: Array<String>): Null<omni.outliner.URL>;
    static function chooseFolder(): Null<omni.outliner.URL>;
    static function fromString(string: String, relativeToURL: Null<omni.outliner.URL>): Null<omni.outliner.URL>;
    static function fromPath(path: String, isDirectory: Bool, relativeToURL: Null<omni.outliner.URL>): omni.outliner.URL;
    static function tellScript(app: String, js: String, arg: Null<Dynamic>): Null<omni.outliner.URL>;
    static function tellFunction(app: String, jsFunction: (Dynamic) -> Void, arg: Null<Dynamic>): Null<omni.outliner.URL>;
    var absoluteString (default,never): String;
    var absoluteURL (default,never): omni.outliner.URL;
    var baseURL (default,never): Null<omni.outliner.URL>;
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

    function fetch(success: (contents: omni.outliner.Data) -> Void, failure: (error: js.lib.Error) -> Null<Void>): Void;
    function call(success: (Dynamic) -> Void, failure: Null<(Dynamic) -> Void>): Void;
    function open(): Void;
    function find(types: Array<omni.outliner.TypeIdentifier>, recurse: Null<Bool>): js.lib.Promise<Array<omni.outliner.URL>>;
    function toString(): String;
    function appendingPathComponent(component: String): omni.outliner.URL;
    function appendingPathExtension(pathExtension: String): omni.outliner.URL;
    function deletingPathExtension(): omni.outliner.URL;
    function deletingLastPathComponent(): omni.outliner.URL;
}
