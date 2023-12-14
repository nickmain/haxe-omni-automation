// Automatically generated. Do not edit.

package omni.focus.url;

@:native("URL.Components")
extern class Components {
    static function fromString(string: String): Null<omni.focus.url.Components>;
    static function fromURL(url: omni.focus.URL, resolvingAgainstBaseURL: Bool): Null<omni.focus.url.Components>;
    var fragment: Null<String>;
    var host: Null<String>;
    var password: Null<String>;
    var path: String;
    var port: Null<Float>;
    var query: Null<String>;
    var queryItems: Null<Array<omni.focus.url.QueryItem>>;
    var scheme: Null<String>;
    var url (default,never): Null<omni.focus.URL>;
    var user: Null<String>;

    function new();

    function urlRelativeTo(base: Null<omni.focus.URL>): Null<omni.focus.URL>;
}
