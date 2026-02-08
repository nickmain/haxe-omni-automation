// Automatically generated. Do not edit.

package omni.outliner.formatter;

@:native("Formatter.Decimal")
extern class Decimal extends omni.outliner.Formatter {
    static var currencyCodes (default,never): Array<String>;
    static var custom (default,never): omni.outliner.formatter.Decimal;
    static var decimal (default,never): omni.outliner.formatter.Decimal;
    static var percent (default,never): omni.outliner.formatter.Decimal;
    static var percentWithDecimal (default,never): omni.outliner.formatter.Decimal;
    static var plain (default,never): omni.outliner.formatter.Decimal;
    static var thousandsAndDecimal (default,never): omni.outliner.formatter.Decimal;
    static function currency(code: Null<String>): omni.outliner.formatter.Decimal;
    var decimalSeparator: String;
    var negativeFormat: String;
    var positiveFormat: String;
    var thousandsSeparator: Null<String>;
    var zeroSymbol: Null<String>;

    function stringFromDecimal(number: omni.outliner.Decimal): Null<String>;
    function decimalFromString(string: String): Null<omni.outliner.Decimal>;
}
