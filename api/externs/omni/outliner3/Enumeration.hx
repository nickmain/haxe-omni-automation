// Automatically generated. Do not edit.

package omni.outliner;

@:native("Enumeration")
extern class Enumeration {
    var beginning (default,never): omni.outliner.EnumerationMemberPosition;
    var end (default,never): omni.outliner.EnumerationMemberPosition;
    var members (default,never): Array<omni.outliner.enumeration.Member>;

    function memberNamed(name: String): Null<omni.outliner.enumeration.Member>;
    function add(name: Null<String>, at: Null<omni.outliner.EnumerationMemberPosition>): omni.outliner.enumeration.Member;
    function move(members: Array<omni.outliner.enumeration.Member>, to: omni.outliner.EnumerationMemberPosition): Void;
}
