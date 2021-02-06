// Automatically generated. Do not edit.

package omni.focus;

@:native("Form")
extern class Form {
    var fields (default,never): Array<omni.focus.form.Field>;
    var validate: Null<js.lib.Function>;
    var values (default,never): Dynamic;

    function new();

    function addField(field: omni.focus.form.Field, index: Null<Float>): Void;
    function removeField(field: omni.focus.form.Field): Void;
    function show(title: String, confirmTitle: String): js.lib.Promise<omni.focus.Form>;
}
