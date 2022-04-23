// Automatically generated. Do not edit.

package omni.outliner.formatter;

@:native("Formatter.Duration")
extern class Duration extends omni.outliner.Formatter {
    var hoursPerDay: Float;
    var hoursPerWeek: Float;
    var useVerboseFormat: Bool;

    function new();

    function stringFromDecimal(number: omni.outliner.Decimal): Null<String>;
    function decimalFromString(string: String): Null<omni.outliner.Decimal>;
}
