// Automatically generated. Do not edit.

package omni.common.url;

@:native("URL.FetchRequest")
extern class FetchRequest {
    static function fromString(string: String): Null<omni.common.url.FetchRequest>;
    var bodyData: Null<omni.common.Data>;
    var bodyString: Null<String>;
    var cache: Null<String>;
    var headers: Dynamic;
    var method: Null<String>;
    var url: Null<omni.common.URL>;

    function new();

    function fetch(): js.lib.Promise<omni.common.url.FetchResponse>;
}
