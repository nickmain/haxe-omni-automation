// Automatically generated. Do not edit.

package omni.outliner.url;

@:native("URL.Bookmark")
extern class Bookmark {
    static function fromURL(url: omni.outliner.URL): omni.outliner.url.Bookmark;

    function access(): js.lib.Promise<omni.outliner.url.Access>;
}
