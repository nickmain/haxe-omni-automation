package omni.automation.graffle;

@:native("HopType")
extern class HopType {

    // Bridge over the other line(s).
    static var Bridge (default,null): HopType;

    // Leave a gap while crossing the other line(s).
    static var Gap (default,null): HopType;

    // No hops, and ignore this line when computing hops for other lines.
    static var Ignore (default,null): HopType;

    // Don’t hop at all.
    static var None (default,null): HopType;

    // Rounded over the other line(s).
    static var Round (default,null): HopType;

    // Rounded under the other line(s).
    static var RoundUnder (default,null): HopType;

    //Square shape over the other line(s).
    static var Square (default,null): HopType;

    //Square shape under the other line(s).
    static var SquareUnder (default,null): HopType;

    // Three segments angled over the other line(s).
    static var ThreeSide (default,null): HopType;

    // Three segments angled under the other line(s).
    static var ThreeSideUnder (default,null): HopType;

    // Vee over the other line(s).
    static var TwoSide (default,null): HopType;

    // Vee under the other line(s).
    static var TwoSideUnder (default,null): HopType;
}
