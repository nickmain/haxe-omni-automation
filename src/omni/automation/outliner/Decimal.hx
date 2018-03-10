package omni.automation.outliner;

@:native("Decimal")
extern class Decimal {
    // Parses the given string into a Decimal.
    // If the string cannot be parsed, notANumber is returned.
    static function fromString(string: String): Decimal;

    // Returns the maximum representable Decimal value.
    static var maximum (default,null): Decimal;

    // Returns the minimum representable Decimal value.
    static var minimum (default,null): Decimal;

    // Returns a Decimal that represents a non-number value.
    // Any arithmetic operations involving non-number values will
    // return notANumber.
    static var notANumber (default,null): Decimal;

    // Returns a Decimal representing one.
    static var one (default,null): Decimal;

    // Returns a Decimal representing zero.
    static var zero (default,null): Decimal;

    // Converts the Decimal to a String representation.
    function toString(): String;

    // Generates a new Decimal by adding the argument and the receiver.
    function add(number: Decimal): Decimal;

    // Generates a new Decimal by subtracting the argument from the receiver.
    function subtract(number: Decimal): Decimal;

    // Generates a new Decimal by multiplying the argument and the receiver.
    function multiply(number: Decimal): Decimal;

    // Generates a new Decimal by dividing the receiver by the argument.
    function divide(number: Decimal): Decimal;

    // Compares the receiver and argument.
    // If the receiver is less than the argument, –1 is returned.
    // If the receiver is greater than the argument, 1 is returned.
    // Otherwise, 0 is returned. notANumber is considered less than
    // any valid number, and equal to itself.
    function compare(number: Decimal): Float;

    // Returns true if the receiver and argument represent the same
    // number (or both are notANumber), and false otherwise.
    function equals(number: Decimal): Bool;

}
