// Automatically generated. Do not edit.

package omni.focus.formatter;

@:native("Formatter.Date")
extern class Date extends omni.focus.Formatter {
    static var iso8601 (default,never): omni.focus.formatter.Date;
    static function withStyle(dateStyle: omni.focus.formatter.date.Style, timeStyle: Null<omni.focus.formatter.date.Style>): omni.focus.formatter.Date;
    static function withFormat(format: String): omni.focus.formatter.Date;
    var calendar: omni.focus.Calendar;
    var dateFormat (default,never): String;
    var locale: omni.focus.Locale;
    var timeZone: omni.focus.TimeZone;

    function stringFromDate(date: js.lib.Date): String;
    function dateFromString(string: String): Null<js.lib.Date>;
}
