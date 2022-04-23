// Automatically generated. Do not edit.

package omni.graffle.url;

@:native("URL.Bookmark")
extern class Bookmark {
    static function fromURL(url: omni.graffle.URL): omni.graffle.url.Bookmark;

    function access(): js.lib.Promise<omni.graffle.url.Access>;
}
