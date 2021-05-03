// Automatically generated. Do not edit.

package omni.common.formatter;

@:native("Formatter.Date")
extern class Date extends omni.common.Formatter {
    static var iso8601 (default,never): omni.common.formatter.Date;
    static function withStyle(dateStyle: omni.common.formatter.date.Style, timeStyle: Null<omni.common.formatter.date.Style>): omni.common.formatter.Date;
    static function withFormat(format: String): omni.common.formatter.Date;
    var calendar: omni.common.Calendar;
    var dateFormat (default,never): String;
    var locale: omni.common.Locale;
    var timeZone: omni.common.TimeZone;

    function stringFromDate(date: js.lib.Date): String;
    function dateFromString(string: String): Null<js.lib.Date>;
}
