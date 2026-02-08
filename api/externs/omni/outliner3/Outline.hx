// Automatically generated. Do not edit.

package omni.outliner;

@:native("Outline")
extern class Outline {
    var alternateRowColor: Null<omni.outliner.Color>;
    var app (default,never): omni.outliner.Application;
    var backgroundColor: omni.outliner.Color;
    var baseStyle (default,never): omni.outliner.Style;
    var columnTitleStyle (default,never): omni.outliner.Style;
    var columns (default,never): omni.outliner.ColumnArray;
    var console (default,never): omni.outliner.Console;
    var document (default,never): Null<omni.outliner.OutlineDocument>;
    var horizontalGridColor: Null<omni.outliner.Color>;
    var levelStyles (default,never): Array<omni.outliner.Style>;
    var namedStyles (default,never): omni.outliner.namedstyle.List;
    var noteColumn (default,never): omni.outliner.Column;
    var outlineColumn (default,never): omni.outliner.Column;
    var plugIns (default,never): Array<omni.outliner.PlugIn>;
    var rootItem (default,never): omni.outliner.Item;
    var statusColumn (default,never): omni.outliner.Column;
    var styleAttributes (default,never): Array<omni.outliner.style.Attribute>;
    var verticalGridColor: Null<omni.outliner.Color>;

    function itemWithIdentifier(identifier: String): Null<omni.outliner.Item>;
    function addColumn(columnType: omni.outliner.column.Type, position: omni.outliner.EditorColumnPosition, configure: (column: omni.outliner.Column) -> Null<Void>): omni.outliner.Column;
    function moveColumns(columns: Array<omni.outliner.Column>, position: omni.outliner.EditorColumnPosition): Void;
    function moveItems(items: Array<omni.outliner.Item>, position: omni.outliner.ItemPosition): Void;
    function duplicateItems(items: Array<omni.outliner.Item>, position: omni.outliner.ItemPosition): Void;
    function levelStyle(depth: Float): omni.outliner.Style;
    function group(items: Array<omni.outliner.Item>): Null<omni.outliner.Item>;
    function ungroup(items: Array<omni.outliner.Item>): Void;
    function organize(items: Array<omni.outliner.Item>, byColumns: Array<omni.outliner.Column>, underItem: omni.outliner.Item, pruneEmptyGroups: Null<Bool>): Void;
    function topItems(items: Array<omni.outliner.Item>): Array<omni.outliner.Item>;
    function bottomItems(items: Array<omni.outliner.Item>): Array<omni.outliner.Item>;
    function itemsSortedByPosition(items: Array<omni.outliner.Item>): Array<omni.outliner.Item>;
    function onCellChanged(handler: omni.outliner.plugin.Handler): Null<omni.outliner.plugin.handler.Registration>;
}
