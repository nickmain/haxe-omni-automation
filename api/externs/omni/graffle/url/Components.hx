// Automatically generated. Do not edit.

package omni.graffle.url;

@:native("URL.Components")
extern class Components {
    static function fromString(string: String): Null<omni.graffle.url.Components>;
    static function fromURL(url: omni.graffle.URL, resolvingAgainstBaseURL: Bool): Null<omni.graffle.url.Components>;
    var fragment: Null<String>;
    var host: Null<String>;
    var password: Null<String>;
    var path: String;
    var port: Null<Float>;
    var query: Null<String>;
    var queryItems: Null<Array<omni.graffle.url.QueryItem>>;
    var scheme: Null<String>;
    var url (default,never): Null<omni.graffle.URL>;
    var user: Null<String>;

    function new();

    function urlRelativeTo(base: Null<omni.graffle.URL>): Null<omni.graffle.URL>;
}
