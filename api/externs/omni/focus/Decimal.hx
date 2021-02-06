// Automatically generated. Do not edit.

package omni.focus;

@:native("Decimal")
extern class Decimal {
    static var maximum (default,never): omni.focus.Decimal;
    static var minimum (default,never): omni.focus.Decimal;
    static var notANumber (default,never): omni.focus.Decimal;
    static var one (default,never): omni.focus.Decimal;
    static var zero (default,never): omni.focus.Decimal;
    static function fromString(string: String): omni.focus.Decimal;

    function toString(): String;
    function add(number: omni.focus.Decimal): omni.focus.Decimal;
    function subtract(number: omni.focus.Decimal): omni.focus.Decimal;
    function multiply(number: omni.focus.Decimal): omni.focus.Decimal;
    function divide(number: omni.focus.Decimal): omni.focus.Decimal;
    function compare(number: omni.focus.Decimal): Float;
    function equals(number: omni.focus.Decimal): Bool;
}
