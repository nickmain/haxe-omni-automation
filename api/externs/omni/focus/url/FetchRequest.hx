// Automatically generated. Do not edit.

package omni.focus.url;

@:native("URL.FetchRequest")
extern class FetchRequest {
    static function fromString(string: String): Null<omni.focus.url.FetchRequest>;
    var bodyData: Null<omni.focus.Data>;
    var bodyString: Null<String>;
    var cache: Null<String>;
    var headers: Dynamic;
    var method: Null<String>;
    var url: Null<omni.focus.URL>;

    function new();

    function fetch(): js.lib.Promise<omni.focus.url.FetchResponse>;
}
