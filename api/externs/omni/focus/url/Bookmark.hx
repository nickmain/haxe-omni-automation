// Automatically generated. Do not edit.

package omni.focus.url;

@:native("URL.Bookmark")
extern class Bookmark {
    static function fromURL(url: omni.focus.URL): omni.focus.url.Bookmark;

    function access(): js.lib.Promise<omni.focus.url.Access>;
}
