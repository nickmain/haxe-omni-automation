// Automatically generated. Do not edit.

package omni.outliner.formatter;

@:native("Formatter.Date")
extern class Date extends omni.outliner.Formatter {
    static var iso8601 (default,never): omni.outliner.formatter.Date;
    static function withStyle(dateStyle: omni.outliner.formatter.date.Style, timeStyle: Null<omni.outliner.formatter.date.Style>): omni.outliner.formatter.Date;
    static function withFormat(format: String): omni.outliner.formatter.Date;
    var calendar: omni.outliner.Calendar;
    var dateFormat (default,never): String;
    var locale: omni.outliner.Locale;
    var timeZone: omni.outliner.TimeZone;

    function stringFromDate(date: js.lib.Date): String;
    function dateFromString(string: String): Null<js.lib.Date>;
}
