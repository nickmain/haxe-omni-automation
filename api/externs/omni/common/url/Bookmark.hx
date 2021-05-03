// Automatically generated. Do not edit.

package omni.common.url;

@:native("URL.Bookmark")
extern class Bookmark {
    static function fromURL(url: omni.common.URL): omni.common.url.Bookmark;

    function access(): js.lib.Promise<omni.common.url.Access>;
}
