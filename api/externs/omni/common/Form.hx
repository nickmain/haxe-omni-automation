// Automatically generated. Do not edit.

package omni.common;

@:native("Form")
extern class Form {
    var fields (default,never): Array<omni.common.form.Field>;
    var validate: Null<(Form) -> Null<Bool>>;
    var values (default,never): Dynamic;

    function new();

    function addField(field: omni.common.form.Field, index: Null<Float>): Void;
    function removeField(field: omni.common.form.Field): Void;
    function show(title: String, confirmTitle: String): js.lib.Promise<omni.common.Form>;
}
