// Automatically generated. Do not edit.

package omni.focus;

@:native("Calendar")
extern class Calendar {
    static var buddhist (default,never): omni.focus.Calendar;
    static var chinese (default,never): omni.focus.Calendar;
    static var coptic (default,never): omni.focus.Calendar;
    static var current (default,never): omni.focus.Calendar;
    static var ethiopicAmeteAlem (default,never): omni.focus.Calendar;
    static var ethiopicAmeteMihret (default,never): omni.focus.Calendar;
    static var gregorian (default,never): omni.focus.Calendar;
    static var hebrew (default,never): omni.focus.Calendar;
    static var indian (default,never): omni.focus.Calendar;
    static var islamic (default,never): omni.focus.Calendar;
    static var islamicCivil (default,never): omni.focus.Calendar;
    static var islamicTabular (default,never): omni.focus.Calendar;
    static var islamicUmmAlQura (default,never): omni.focus.Calendar;
    static var iso8601 (default,never): omni.focus.Calendar;
    static var japanese (default,never): omni.focus.Calendar;
    static var persian (default,never): omni.focus.Calendar;
    static var republicOfChina (default,never): omni.focus.Calendar;
    var identifier (default,never): String;
    var locale (default,never): Null<omni.focus.Locale>;
    var timeZone (default,never): omni.focus.TimeZone;

    function dateByAddingDateComponents(date: js.lib.Date, components: omni.focus.DateComponents): Null<js.lib.Date>;
    function dateFromDateComponents(components: omni.focus.DateComponents): Null<js.lib.Date>;
    function dateComponentsFromDate(date: js.lib.Date): omni.focus.DateComponents;
    function dateComponentsBetweenDates(start: js.lib.Date, end: js.lib.Date): omni.focus.DateComponents;
    function startOfDay(date: js.lib.Date): js.lib.Date;
}
