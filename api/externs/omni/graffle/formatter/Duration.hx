// Automatically generated. Do not edit.

package omni.graffle.formatter;

@:native("Formatter.Duration")
extern class Duration extends omni.graffle.Formatter {
    var hoursPerDay: Float;
    var hoursPerWeek: Float;
    var useVerboseFormat: Bool;

    function new();

    function stringFromDecimal(number: omni.graffle.Decimal): Null<String>;
    function decimalFromString(string: String): Null<omni.graffle.Decimal>;
}
