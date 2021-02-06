// Automatically generated. Do not edit.

package omni.focus.formatter;

@:native("Formatter.Duration")
extern class Duration extends omni.focus.Formatter {
    var hoursPerDay: Float;
    var hoursPerWeek: Float;
    var useVerboseFormat: Bool;

    function new();

    function stringFromDecimal(number: omni.focus.Decimal): Null<String>;
    function decimalFromString(string: String): Null<omni.focus.Decimal>;
}
