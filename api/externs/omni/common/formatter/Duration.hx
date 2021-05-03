// Automatically generated. Do not edit.

package omni.common.formatter;

@:native("Formatter.Duration")
extern class Duration extends omni.common.Formatter {
    var hoursPerDay: Float;
    var hoursPerWeek: Float;
    var useVerboseFormat: Bool;

    function new();

    function stringFromDecimal(number: omni.common.Decimal): Null<String>;
    function decimalFromString(string: String): Null<omni.common.Decimal>;
}
