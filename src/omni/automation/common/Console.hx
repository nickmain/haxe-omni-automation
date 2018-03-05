package omni.automation.common;

/**
 * The Console allows scripts to log debugging, warning, or error information
 * where it can be viewed in the system console or in the console output area.
 * A single instance of Console is available to scripts as the console global variable.
 */
@:native("console")
extern class Console {

    // Appends a line to the application console formed by concatenating
    // the given message (after converting it to a String), any additional
    // arguments separated by spaces, and finally a newline.
    static function log(message: Dynamic, ?additional: Array<Dynamic>): Void;

    static function error(message: Dynamic, ?additional: Array<Dynamic>): Void;

    static function info(message: Dynamic, ?additional: Array<Dynamic>): Void;

    // Just calls Console.log, currently.
    static function warn(message: Dynamic, ?additional: Array<Dynamic>): Void;

    //Clears the console in the user-visible window.
    static function clear(): Void;
}
