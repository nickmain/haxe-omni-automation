// Automatically generated. Do not edit.

package omni.focus;

@:native("Credentials")
extern class Credentials {

    function new();

    function read(service: String): Null<Dynamic>;
    function write(service: String, username: String, password: String): Void;
    function remove(service: String): Void;
}
