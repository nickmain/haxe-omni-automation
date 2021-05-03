// Automatically generated. Do not edit.

package omni.focus;

@:native("Tree")
extern class Tree {
    var rootNode (default,never): omni.focus.TreeNode;
    var selectedNodes (default,never): Array<omni.focus.TreeNode>;

    function nodeForObject(object: Dynamic): Null<omni.focus.TreeNode>;
    function nodesForObjects(object: Array<Dynamic>): Array<omni.focus.TreeNode>;
    function reveal(nodes: Array<omni.focus.TreeNode>): Void;
    function select(nodes: Array<omni.focus.TreeNode>, extending: Null<Bool>): Void;
    function copyNodes(nodes: Array<omni.focus.TreeNode>, to: omni.common.Pasteboard): Void;
    function paste(from: omni.common.Pasteboard, parentNode: Null<omni.focus.TreeNode>, childIndex: Null<Float>): Void;
}
