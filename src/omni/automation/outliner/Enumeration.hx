package omni.automation.outliner;

@:native("Enumeration")
extern class Enumeration {

    // Returns an Enumeration.Member.Position that indicates the position
    // before any other members.
    var beginning (default,null): EnumerationMemberPosition;

    // Returns an Enumeration.Member.Position that indicates the position
    // before after existing children.
    var end (default,null): EnumerationMemberPosition;

    // Returns the sorted list of Enumeration.Members contained in this Enumeration.
    var members (default,null): Array<EnumerationMember>;

    // Returns the Enumeration.Member with specified name, or null if no member
    // has the given name.
    function memberNamed(name: String): Null<EnumerationMember>;

    // Adds a new Enumeration.Member to the Enumeration, using the specified
    // name if it is unused (otherwise a unique name is selected automatically).
    // A Enumeration.Member.Position may be specified to determine where in the
    // list of members the new member is located.
    function add(?name: String, ?at: EnumerationMemberPosition): EnumerationMember;

    // Moves the Enumeration.Members to the requested position.
    function move(members: Array<EnumerationMember>, to: EnumerationMemberPosition): Void;

}
