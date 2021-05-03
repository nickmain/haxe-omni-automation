// Automatically generated. Do not edit.

package omni.common;

@:native("Decimal")
extern class Decimal {
    static var maximum (default,never): omni.common.Decimal;
    static var minimum (default,never): omni.common.Decimal;
    static var notANumber (default,never): omni.common.Decimal;
    static var one (default,never): omni.common.Decimal;
    static var zero (default,never): omni.common.Decimal;
    static function fromString(string: String): omni.common.Decimal;

    function toString(): String;
    function add(number: omni.common.Decimal): omni.common.Decimal;
    function subtract(number: omni.common.Decimal): omni.common.Decimal;
    function multiply(number: omni.common.Decimal): omni.common.Decimal;
    function divide(number: omni.common.Decimal): omni.common.Decimal;
    function compare(number: omni.common.Decimal): Float;
    function equals(number: omni.common.Decimal): Bool;
}
