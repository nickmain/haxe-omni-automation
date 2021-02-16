// Automatically generated. Do not edit.

package omni.outliner;

@:native("Editor")
extern class Editor extends Tree {
    var focusedItems: Array<omni.outliner.Item>;
    var foldingEnabled: Bool;
    var noteDisplay: omni.outliner.NoteDisplay;
    var selection (default,never): omni.outliner.Selection;

    function visibilityOfColumn(column: omni.outliner.Column): Bool;
    function setVisibilityOfColumn(column: omni.outliner.Column, visible: Bool): Void;
    function widthForColumn(column: omni.outliner.Column): Float;
    function setWidthForColumn(column: omni.outliner.Column, width: Float): Void;
    function sortOrderingForColumn(column: omni.outliner.Column): Null<omni.outliner.SortOrdering>;
    function setSortOrderingForColumn(column: omni.outliner.Column, order: Null<omni.outliner.SortOrdering>): Void;
    function withoutSorting(f: (Dynamic) -> Void): Null<Dynamic>;
    function summaryForColumn(column: omni.outliner.Column): Null<omni.outliner.column.Summary>;
    function setSummaryForColumn(column: omni.outliner.Column, summary: Null<omni.outliner.column.Summary>): Void;
    function beforeColumn(column: Null<omni.outliner.Column>): omni.outliner.EditorColumnPosition;
    function afterColumn(column: Null<omni.outliner.Column>): omni.outliner.EditorColumnPosition;
    function nodeForItem(item: omni.outliner.Item): Null<omni.outliner.TreeNode>;
    function nodesForItems(items: Array<omni.outliner.Item>): Array<omni.outliner.TreeNode>;
    function scrollToNode(node: omni.outliner.TreeNode): Void;
    function indentNodes(nodes: Array<omni.outliner.TreeNode>): Void;
    function outdentNodes(nodes: Array<omni.outliner.TreeNode>): Void;
}
