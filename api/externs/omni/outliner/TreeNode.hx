// Automatically generated. Do not edit.

package omni.outliner;

@:native("TreeNode")
extern class TreeNode {
    var canCollapse (default,never): Bool;
    var canExpand (default,never): Bool;
    var childCount (default,never): Float;
    var children (default,never): Array<omni.outliner.TreeNode>;
    var index (default,never): Float;
    var isExpanded (default,never): Bool;
    var isNoteExpanded (default,never): Bool;
    var isRevealed (default,never): Bool;
    var isRootNode (default,never): Bool;
    var isSelectable (default,never): Bool;
    var isSelected: Bool;
    var level (default,never): Float;
    var object (default,never): Dynamic;
    var parent (default,never): Null<omni.outliner.TreeNode>;
    var rootNode (default,never): omni.outliner.TreeNode;

    function childAtIndex(childIndex: Float): omni.outliner.TreeNode;
    function expand(completely: Null<Bool>): Void;
    function collapse(completely: Null<Bool>): Void;
    function expandNote(completely: Null<Bool>): Void;
    function collapseNote(completely: Null<Bool>): Void;
    function reveal(): Void;
    function apply(f: (node: omni.outliner.TreeNode) -> Null<omni.outliner.ApplyResult>): Null<omni.outliner.ApplyResult>;
}
