// Automatically generated. Do not edit.

package omni.graffle;

@:native("Credentials")
extern class Credentials {

    function new();

    function read(service: String): Null<Dynamic>;
    function write(service: String, username: String, password: String): Void;
    function remove(service: String): Void;
    function readBookmark(service: String): Null<omni.graffle.url.Bookmark>;
    function writeBookmark(service: String, bookmark: omni.graffle.url.Bookmark): Void;
}
