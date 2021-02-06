// Automatically generated. Do not edit.

package omni.focus;

@:native("Settings")
extern class Settings {
    var keys (default,never): Array<String>;

    function defaultObjectForKey(key: String): Null<Dynamic>;
    function hasNonDefaultObjectForKey(key: String): Bool;
    function objectForKey(key: String): Null<Dynamic>;
    function setObjectForKey(value: Null<Dynamic>, key: String): Void;
    function boolForKey(key: String): Bool;
    function setBoolForKey(value: Bool, key: String): Void;
    function integerForKey(key: String): Float;
    function setIntegerForKey(value: Float, key: String): Void;
}
