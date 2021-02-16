// Automatically generated. Do not edit.

package omni.outliner.url;

@:native("URL.FetchRequest")
extern class FetchRequest {
    static function fromString(string: String): Null<omni.outliner.url.FetchRequest>;
    var bodyData: Null<omni.outliner.Data>;
    var bodyString: Null<String>;
    var cache: Null<String>;
    var headers: Dynamic;
    var method: Null<String>;
    var url: Null<omni.outliner.URL>;

    function new();

    function fetch(): js.lib.Promise<omni.outliner.url.FetchResponse>;
}
