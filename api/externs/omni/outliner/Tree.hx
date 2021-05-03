// Automatically generated. Do not edit.

package omni.outliner;

@:native("Tree")
extern class Tree {
    var rootNode (default,never): omni.outliner.TreeNode;
    var selectedNodes (default,never): Array<omni.outliner.TreeNode>;

    function nodeForObject(object: Dynamic): Null<omni.outliner.TreeNode>;
    function nodesForObjects(object: Array<Dynamic>): Array<omni.outliner.TreeNode>;
    function reveal(nodes: Array<omni.outliner.TreeNode>): Void;
    function select(nodes: Array<omni.outliner.TreeNode>, extending: Null<Bool>): Void;
    function copyNodes(nodes: Array<omni.outliner.TreeNode>, to: omni.common.Pasteboard): Void;
    function paste(from: omni.common.Pasteboard, parentNode: Null<omni.outliner.TreeNode>, childIndex: Null<Float>): Void;
}
