// Automatically generated. Do not edit.

package omni.graffle;

@:native("Decimal")
extern class Decimal {
    static var maximum (default,never): omni.graffle.Decimal;
    static var minimum (default,never): omni.graffle.Decimal;
    static var notANumber (default,never): omni.graffle.Decimal;
    static var one (default,never): omni.graffle.Decimal;
    static var zero (default,never): omni.graffle.Decimal;
    static function fromString(string: String): omni.graffle.Decimal;

    function toString(): String;
    function add(number: omni.graffle.Decimal): omni.graffle.Decimal;
    function subtract(number: omni.graffle.Decimal): omni.graffle.Decimal;
    function multiply(number: omni.graffle.Decimal): omni.graffle.Decimal;
    function divide(number: omni.graffle.Decimal): omni.graffle.Decimal;
    function compare(number: omni.graffle.Decimal): Float;
    function equals(number: omni.graffle.Decimal): Bool;
}
