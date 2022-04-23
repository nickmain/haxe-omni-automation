// Automatically generated. Do not edit.

package omni.graffle.formatter;

@:native("Formatter.Decimal")
extern class Decimal extends omni.graffle.Formatter {
    static var currencyCodes (default,never): Array<String>;
    static var custom (default,never): omni.graffle.formatter.Decimal;
    static var decimal (default,never): omni.graffle.formatter.Decimal;
    static var percent (default,never): omni.graffle.formatter.Decimal;
    static var percentWithDecimal (default,never): omni.graffle.formatter.Decimal;
    static var plain (default,never): omni.graffle.formatter.Decimal;
    static var thousandsAndDecimal (default,never): omni.graffle.formatter.Decimal;
    static function currency(code: Null<String>): omni.graffle.formatter.Decimal;
    var decimalSeparator: String;
    var negativeFormat: String;
    var positiveFormat: String;
    var thousandsSeparator: Null<String>;
    var zeroSymbol: Null<String>;

    function stringFromDecimal(number: omni.graffle.Decimal): Null<String>;
    function decimalFromString(string: String): Null<omni.graffle.Decimal>;
}
