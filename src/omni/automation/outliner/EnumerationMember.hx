package omni.automation.outliner;

@:native("EnumerationMember")
extern class EnumerationMember {
    // Returns an Enumeration.Member.Position that indicates the position
    // just after this member.
    var after (default,null): EnumerationMemberPosition;

    // Returns an Enumeration.Member.Position that indicates the position
    // just before this member.
    var before (default,null): EnumerationMemberPosition;

    var name (default,null): String;

    function remove(): Void;
}
