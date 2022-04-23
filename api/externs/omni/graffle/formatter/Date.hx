// Automatically generated. Do not edit.

package omni.graffle.formatter;

@:native("Formatter.Date")
extern class Date extends omni.graffle.Formatter {
    static var iso8601 (default,never): omni.graffle.formatter.Date;
    static function withStyle(dateStyle: omni.graffle.formatter.date.Style, timeStyle: Null<omni.graffle.formatter.date.Style>): omni.graffle.formatter.Date;
    static function withFormat(format: String): omni.graffle.formatter.Date;
    var calendar: omni.graffle.Calendar;
    var dateFormat (default,never): String;
    var locale: omni.graffle.Locale;
    var timeZone: omni.graffle.TimeZone;

    function stringFromDate(date: js.lib.Date): String;
    function dateFromString(string: String): Null<js.lib.Date>;
}
