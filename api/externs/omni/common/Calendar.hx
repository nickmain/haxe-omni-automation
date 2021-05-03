// Automatically generated. Do not edit.

package omni.common;

@:native("Calendar")
extern class Calendar {
    static var buddhist (default,never): omni.common.Calendar;
    static var chinese (default,never): omni.common.Calendar;
    static var coptic (default,never): omni.common.Calendar;
    static var current (default,never): omni.common.Calendar;
    static var ethiopicAmeteAlem (default,never): omni.common.Calendar;
    static var ethiopicAmeteMihret (default,never): omni.common.Calendar;
    static var gregorian (default,never): omni.common.Calendar;
    static var hebrew (default,never): omni.common.Calendar;
    static var indian (default,never): omni.common.Calendar;
    static var islamic (default,never): omni.common.Calendar;
    static var islamicCivil (default,never): omni.common.Calendar;
    static var islamicTabular (default,never): omni.common.Calendar;
    static var islamicUmmAlQura (default,never): omni.common.Calendar;
    static var iso8601 (default,never): omni.common.Calendar;
    static var japanese (default,never): omni.common.Calendar;
    static var persian (default,never): omni.common.Calendar;
    static var republicOfChina (default,never): omni.common.Calendar;
    var identifier (default,never): String;
    var locale (default,never): Null<omni.common.Locale>;
    var timeZone (default,never): omni.common.TimeZone;

    function dateByAddingDateComponents(date: js.lib.Date, components: omni.common.DateComponents): Null<js.lib.Date>;
    function dateFromDateComponents(components: omni.common.DateComponents): Null<js.lib.Date>;
    function dateComponentsFromDate(date: js.lib.Date): omni.common.DateComponents;
    function dateComponentsBetweenDates(start: js.lib.Date, end: js.lib.Date): omni.common.DateComponents;
    function startOfDay(date: js.lib.Date): js.lib.Date;
}
