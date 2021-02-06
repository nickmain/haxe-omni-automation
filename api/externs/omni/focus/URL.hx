// Automatically generated. Do not edit.

package omni.focus;

@:native("URL")
extern class URL {
    static var currentAppScheme (default,never): String;
    static function choose(types: Array<String>): Null<omni.focus.URL>;
    static function chooseFolder(): Null<omni.focus.URL>;
    static function fromString(string: String): Null<omni.focus.URL>;
    static function tellScript(app: String, js: String, arg: Null<Dynamic>): Null<omni.focus.URL>;
    static function tellFunction(app: String, jsFunction: js.lib.Function, arg: Null<Dynamic>): Null<omni.focus.URL>;
    var string (default,never): String;
    var toObject (default,never): Null<Dynamic>;

    function fetch(success: js.lib.Function, failure: Null<js.lib.Function>): Void;
    function call(success: js.lib.Function, failure: Null<js.lib.Function>): Void;
    function open(): Void;
    function find(types: Array<omni.focus.TypeIdentifier>, recurse: Null<Bool>): js.lib.Promise<Array<omni.focus.URL>>;
    function toString(): String;
}
