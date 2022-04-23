// Automatically generated. Do not edit.

package omni.graffle;

@:native("Calendar")
extern class Calendar {
    static var buddhist (default,never): omni.graffle.Calendar;
    static var chinese (default,never): omni.graffle.Calendar;
    static var coptic (default,never): omni.graffle.Calendar;
    static var current (default,never): omni.graffle.Calendar;
    static var ethiopicAmeteAlem (default,never): omni.graffle.Calendar;
    static var ethiopicAmeteMihret (default,never): omni.graffle.Calendar;
    static var gregorian (default,never): omni.graffle.Calendar;
    static var hebrew (default,never): omni.graffle.Calendar;
    static var indian (default,never): omni.graffle.Calendar;
    static var islamic (default,never): omni.graffle.Calendar;
    static var islamicCivil (default,never): omni.graffle.Calendar;
    static var islamicTabular (default,never): omni.graffle.Calendar;
    static var islamicUmmAlQura (default,never): omni.graffle.Calendar;
    static var iso8601 (default,never): omni.graffle.Calendar;
    static var japanese (default,never): omni.graffle.Calendar;
    static var persian (default,never): omni.graffle.Calendar;
    static var republicOfChina (default,never): omni.graffle.Calendar;
    var identifier (default,never): String;
    var locale (default,never): Null<omni.graffle.Locale>;
    var timeZone (default,never): omni.graffle.TimeZone;

    function dateByAddingDateComponents(date: js.lib.Date, components: omni.graffle.DateComponents): Null<js.lib.Date>;
    function dateFromDateComponents(components: omni.graffle.DateComponents): Null<js.lib.Date>;
    function dateComponentsFromDate(date: js.lib.Date): omni.graffle.DateComponents;
    function dateComponentsBetweenDates(start: js.lib.Date, end: js.lib.Date): omni.graffle.DateComponents;
    function startOfDay(date: js.lib.Date): js.lib.Date;
}
