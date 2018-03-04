package omni.automation.common;

@:native("URL")
extern class URL {

    var string (default,null): String;

    // Get the contents at the destination of this URL.
    function fetch(callback: Data -> Void): Void;

    function call(success: Data -> Void): Void;

    function toString(): String;

    // Allows the user to choose a file URL if possible and returns a new
    // instance, or null otherwise.
    static function choose(types: Array<String>): Null<URL>;

    // Allows the user to choose a folder URL if possible and returns a
    // new instance, or null otherwise.
    static function chooseFolder(): Null<URL>;

    // Parses the string as a URL if possible and returns a new instance,
    // or null otherwise.
    static function fromString(string: String): Null<URL>;

    // Creates a URL to invoke the given JS on the given app (url scheme)
    // appropriate for use with the call function.
    static function tellScript(app: String, js: String, arg: Null<Dynamic>): Null<URL>;
}
