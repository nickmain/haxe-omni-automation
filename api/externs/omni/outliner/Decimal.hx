// Automatically generated. Do not edit.

package omni.outliner;

@:native("Decimal")
extern class Decimal {
    static var maximum (default,never): omni.outliner.Decimal;
    static var minimum (default,never): omni.outliner.Decimal;
    static var notANumber (default,never): omni.outliner.Decimal;
    static var one (default,never): omni.outliner.Decimal;
    static var zero (default,never): omni.outliner.Decimal;
    static function fromString(string: String): omni.outliner.Decimal;

    function toString(): String;
    function add(number: omni.outliner.Decimal): omni.outliner.Decimal;
    function subtract(number: omni.outliner.Decimal): omni.outliner.Decimal;
    function multiply(number: omni.outliner.Decimal): omni.outliner.Decimal;
    function divide(number: omni.outliner.Decimal): omni.outliner.Decimal;
    function compare(number: omni.outliner.Decimal): Float;
    function equals(number: omni.outliner.Decimal): Bool;
}
