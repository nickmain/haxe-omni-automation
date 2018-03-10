package omni.automation.outliner;

@:native("Editor")
extern class Editor {

    var focusedItems: Array<Item>;

    // When set, cells with text that would layout over multiple lines only
    // show their first line, followed by an ellipsis. Editing a cell that
    // is folded, will temporarily expand it.
    var foldingEnabled: Bool;

    // Now the notes for each row are displayed, either together with their
    // row when Inline is selected, or in a separate pane with Pane.
    var noteDisplay: NoteDisplay;

    // Returns the rootNode of the Editor.
    var rootNode (default,null): TreeNode;

    // Returns the list of selected TreeNodes, in the order they appear
    // in the tree.
    var selectedNodes (default,null): Array<TreeNode>;


    // Returns true if the specified Column is visible.
    function visibilityOfColumn(column: Column): Bool;

    // Sets the visibility of the specified Column within the Editor.
    function setVisibilityOfColumn(column: Column, visible: Bool): Void;

    // Returns the width in points used to display the Column, assuming a
    // zoom factor of 1.0.
    function widthForColumn(column: Column): Float;

    // Sets the width in points used to display the Column, assuming a zoom
    // factor of 1.0.
    function setWidthForColumn(column: Column, width: Float): Void;


    // Returns the current sort ordering in this editor for the specified
    // Column, or null if no ordering is set.
    function sortOrderingForColumn(column: Column): Null<SortOrdering>;

    // Changes the sort ordering for the specified Column in this editor.
    function setSortOrderingForColumn(column: Column, order: Null<SortOrdering>): Void;

    // Temporarily disables any automatic sorting while running the passed
    // in Function (which is invoked with zero arguments).
    // The result of the function is returned.
    function withoutSorting<T>(func: Void -> T): T;

    // Returns the current Summary used to calculate cells value for
    // parent items in the specified Column, or null if the values are
    // directly editable.
    function summaryForColumn(column: Column): Null<ColumnSummary>;

    // Sets or clears the Summary used to calculate cells value for parent
    // items.
    function setSummaryForColumn(column: Column, summary: Null<ColumnSummary>): Void;

    // Returns an EditorColumnPosition that indicates the slot before
    // the specified column, or before all columns if null is given.
    function beforeColumn(column: Null<Column>): EditorColumnPosition;

    // Returns an EditorColumnPosition that indicates the slot after
    // the specified column, or after all columns if null is given.
    function afterColumn(column: Null<Column>): EditorColumnPosition;

    // Returns the TreeNode that represents the item in this Editor,
    // or null if it cannot be found (possibly filtered out, or not
    // contained in the focusedItems).
    function nodeForItem(item: Item): Null<TreeNode>;

    // Returns an array of TreeNodes for the Items that are currently
    // in the Editor’s filtered and focused view.
    // The size of the resulting node array may be smaller (even empty)
    // than the passed in items array.
    function nodesForItems(items: Array<Item>): Array<TreeNode>;

    // Ensures the ancestor nodes of all the specified nodes are expanded.
    function reveal(nodes: Array<TreeNode>): Void;

    // Selects the specified TreeNodes that are visible (nodes with
    // collapsed ancestors cannot be selected).
    // If extending is true, the existing selection is not cleared.
    function select(nodes: Array<TreeNode>, ?extending: Bool): Void;

    // Attempts to scroll the view so that the specified TreeNode is visible.
    // If the node is not revealed due to a collapsed ancestor, this may
    // not be possible and no scrolling will be performed.
    function scrollToNode(node: TreeNode): Void;

    // Indents the specified nodes one level, or throws an error if that
    // isn’t possible.
    function indentNodes(nodes: Array<TreeNode>): Void;

    // Outdents the specified nodes one level, or throws an error if that
    // isn’t possible.
    function outdentNodes(nodes: Array<TreeNode>): Void;

    // No documentation available.
    function copyNodes(nodes: Array<TreeNode>, to: Pasteboard): Void;

    // No documentation available.
    function paste(from: Pasteboard, parentNode: TreeNode, childIndex: Float): Void;
}
