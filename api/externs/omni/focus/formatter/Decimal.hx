// Automatically generated. Do not edit.

package omni.focus.formatter;

@:native("Formatter.Decimal")
extern class Decimal extends omni.focus.Formatter {
    static var currencyCodes (default,never): Array<String>;
    static var custom (default,never): omni.focus.formatter.Decimal;
    static var decimal (default,never): omni.focus.formatter.Decimal;
    static var percent (default,never): omni.focus.formatter.Decimal;
    static var percentWithDecimal (default,never): omni.focus.formatter.Decimal;
    static var plain (default,never): omni.focus.formatter.Decimal;
    static var thousandsAndDecimal (default,never): omni.focus.formatter.Decimal;
    static function currency(code: Null<String>): omni.focus.formatter.Decimal;
    var decimalSeparator: String;
    var negativeFormat: String;
    var positiveFormat: String;
    var thousandsSeparator: Null<String>;
    var zeroSymbol: Null<String>;

    function stringFromDecimal(number: omni.focus.Decimal): Null<String>;
    function decimalFromString(string: String): Null<omni.focus.Decimal>;
}
