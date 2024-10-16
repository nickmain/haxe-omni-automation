// Automatically generated. Do not edit.

package omni.focus;

@:native("DocumentWindow")
extern class DocumentWindow extends Window {
    var content (default,never): Null<omni.focus.ContentTree>;
    var focus: Null<omni.focus.SectionArray>;
    var inspectorVisible: Bool;
    var isCompact (default,never): Bool;
    var isTab (default,never): Bool;
    var perspective: Null<epistem.typescript.Helpers.Union2<omni.focus.perspective.BuiltIn, omni.focus.perspective.Custom>>;
    var selection (default,never): omni.focus.Selection;
    var sidebar (default,never): Null<omni.focus.SidebarTree>;
    var sidebarVisible: Bool;
    var tabGroupWindows (default,never): Array<omni.focus.DocumentWindow>;

    function selectObjects(objects: Array<omni.focus.DatabaseObject>): Void;
    function forecastDayForDate(date: js.lib.Date): omni.focus.ForecastDay;
    function selectForecastDays(days: Array<omni.focus.ForecastDay>): Void;
}
