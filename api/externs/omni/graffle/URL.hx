// Automatically generated. Do not edit.

package omni.graffle;

@:native("URL")
extern class URL {
    static var currentAppScheme (default,never): String;
    static function choose(types: Array<String>): Null<omni.graffle.URL>;
    static function chooseFolder(): Null<omni.graffle.URL>;
    static function fromString(string: String): Null<omni.graffle.URL>;
    static function tellScript(app: String, js: String, arg: Null<Dynamic>): Null<omni.graffle.URL>;
    static function tellFunction(app: String, jsFunction: (Dynamic) -> Void, arg: Null<Dynamic>): Null<omni.graffle.URL>;
    var string (default,never): String;
    var toObject (default,never): Null<Dynamic>;

    function fetch(success: (Dynamic) -> Void, failure: Null<(Dynamic) -> Void>): Void;
    function call(success: (Dynamic) -> Void, failure: Null<(Dynamic) -> Void>): Void;
    function open(): Void;
    function find(types: Array<omni.graffle.TypeIdentifier>, recurse: Null<Bool>): js.lib.Promise<Array<omni.graffle.URL>>;
    function toString(): String;
}
