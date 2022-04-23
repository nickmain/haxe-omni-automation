// Automatically generated. Do not edit.

package omni.outliner.url;

@:native("URL.Components")
extern class Components {
    static function fromString(string: String): Null<omni.outliner.url.Components>;
    static function fromURL(url: omni.outliner.URL, resolvingAgainstBaseURL: Bool): Null<omni.outliner.url.Components>;
    var fragment: Null<String>;
    var host: Null<String>;
    var password: Null<String>;
    var path: String;
    var port: Null<Float>;
    var query: Null<String>;
    var queryItems: Null<Array<omni.outliner.url.QueryItem>>;
    var scheme: Null<String>;
    var url (default,never): Null<omni.outliner.URL>;
    var user: Null<String>;

    function new();

    function urlRelativeTo(base: Null<omni.outliner.URL>): Null<omni.outliner.URL>;
}
