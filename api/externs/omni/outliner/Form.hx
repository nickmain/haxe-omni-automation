// Automatically generated. Do not edit.

package omni.outliner;

@:native("Form")
extern class Form {
    var fields (default,never): Array<omni.outliner.form.Field>;
    var validate: Null<(Form) -> Null<Bool>>;
    var values (default,never): Dynamic;

    function new();

    function addField(field: omni.outliner.form.Field, index: Null<Float>): Void;
    function removeField(field: omni.outliner.form.Field): Void;
    function show(title: String, confirmTitle: String): js.lib.Promise<omni.outliner.Form>;
}
