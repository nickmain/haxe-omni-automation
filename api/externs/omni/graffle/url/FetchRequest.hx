// Automatically generated. Do not edit.

package omni.graffle.url;

@:native("URL.FetchRequest")
extern class FetchRequest {
    static function fromString(string: String): Null<omni.graffle.url.FetchRequest>;
    var bodyData: Null<omni.graffle.Data>;
    var bodyString: Null<String>;
    var cache: Null<String>;
    var headers: Dynamic;
    var method: Null<String>;
    var url: Null<omni.graffle.URL>;

    function new();

    function fetch(): js.lib.Promise<omni.graffle.url.FetchResponse>;
}
