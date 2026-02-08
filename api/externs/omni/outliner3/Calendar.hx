// Automatically generated. Do not edit.

package omni.outliner;

@:native("Calendar")
extern class Calendar {
    static var buddhist (default,never): omni.outliner.Calendar;
    static var chinese (default,never): omni.outliner.Calendar;
    static var coptic (default,never): omni.outliner.Calendar;
    static var current (default,never): omni.outliner.Calendar;
    static var ethiopicAmeteAlem (default,never): omni.outliner.Calendar;
    static var ethiopicAmeteMihret (default,never): omni.outliner.Calendar;
    static var gregorian (default,never): omni.outliner.Calendar;
    static var hebrew (default,never): omni.outliner.Calendar;
    static var indian (default,never): omni.outliner.Calendar;
    static var islamic (default,never): omni.outliner.Calendar;
    static var islamicCivil (default,never): omni.outliner.Calendar;
    static var islamicTabular (default,never): omni.outliner.Calendar;
    static var islamicUmmAlQura (default,never): omni.outliner.Calendar;
    static var iso8601 (default,never): omni.outliner.Calendar;
    static var japanese (default,never): omni.outliner.Calendar;
    static var persian (default,never): omni.outliner.Calendar;
    static var republicOfChina (default,never): omni.outliner.Calendar;
    var identifier (default,never): String;
    var locale (default,never): Null<omni.outliner.Locale>;
    var timeZone (default,never): omni.outliner.TimeZone;

    function dateByAddingDateComponents(date: js.lib.Date, components: omni.outliner.DateComponents): Null<js.lib.Date>;
    function dateFromDateComponents(components: omni.outliner.DateComponents): Null<js.lib.Date>;
    function dateComponentsFromDate(date: js.lib.Date): omni.outliner.DateComponents;
    function dateComponentsBetweenDates(start: js.lib.Date, end: js.lib.Date): omni.outliner.DateComponents;
    function startOfDay(date: js.lib.Date): js.lib.Date;
}
