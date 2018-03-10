package omni.automation.outliner;

/**
 * A Summary can be applied for a Column in a given Editor using its
 * setSummaryForColumn() function. When there is a summary set, it
 * defines a rule for calculating a value to display for a parent row,
 * given the values in its children. Note that this calculated value is
 * not stored in the parent Item itself and instead can be accessed by
 * the TreeNode representing the Item within the Editor.
 */
@:native("Column.Summary")
extern class ColumnSummary {
    // Calculate the average value over the entries in the descendant
    // Items that themselves have no children.
    static var AverageLeaves (default,null): ColumnSummary;

    // Hide the value in rows displayed for Items that have children.
    static var Hidden (default,null): ColumnSummary;

    // Display the maximum value over the children of each Item.
    static var Maximum (default,null): ColumnSummary;

    // Display the minimum value over the children of each Item.
    static var Minimum (default,null): ColumnSummary;

    // For Checkbox columns, calculate the state of the checkbox
    // based off the state of the children. If all children are checked
    // or unchecked, the parent will display a check as well.
    // If there is a mix of children states, the parent will display a
    // mixed state, indicated by a -.
    static var State (default,null): ColumnSummary;

    // Display the total of the values in the children of each Item.
    static var Total (default,null): ColumnSummary;
}
