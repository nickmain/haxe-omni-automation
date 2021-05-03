// Automatically generated. Do not edit.

package omni.common;

@:native("Credentials")
extern class Credentials {

    function new();

    function read(service: String): Null<Dynamic>;
    function write(service: String, username: String, password: String): Void;
    function remove(service: String): Void;
    function readBookmark(service: String): Null<omni.common.url.Bookmark>;
    function writeBookmark(service: String, bookmark: omni.common.url.Bookmark): Void;
}
