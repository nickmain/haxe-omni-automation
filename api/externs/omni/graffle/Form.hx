// Automatically generated. Do not edit.

package omni.graffle;

@:native("Form")
extern class Form {
    var fields (default,never): Array<omni.graffle.form.Field>;
    var validate: Null<(Dynamic) -> Void>;
    var values (default,never): Dynamic;

    function new();

    function addField(field: omni.graffle.form.Field, index: Null<Float>): Void;
    function removeField(field: omni.graffle.form.Field): Void;
    function show(title: String, confirmTitle: String): js.lib.Promise<omni.graffle.Form>;
}
