package omni.automation.graffle;

@:native("StrokeDash")
extern class StrokeDash {

    static var Dash10on3off2on3off (default,null): StrokeDash;
    static var Dash10on3off2on3off2on3off (default,null): StrokeDash;

    // Sixteen point dash segments with nine point gaps.
    static var Dash16on9off (default,null): StrokeDash;

    static var Dash16on9off16on9off1on9off (default,null): StrokeDash;
    static var Dash16on9off1on9off (default,null): StrokeDash;
    static var Dash16on9off1on9off1on9off (default,null): StrokeDash;

    // One point dot segments with three point gaps.
    static var Dash1on3off (default,null): StrokeDash;

    // One point dot segments with four point gaps.
    static var Dash1on4off (default,null): StrokeDash;

    // One point dot segments with five point gaps.
    static var Dash1on5off (default,null): StrokeDash;

    // One point dot segments with nine point gaps.
    static var Dash1on9off (default,null): StrokeDash;

    static var Dash20on5off4on5off (default,null): StrokeDash;
    static var Dash20on5off4on5off4on5off (default,null): StrokeDash;
    static var Dash2on2off (default,null): StrokeDash;
    static var Dash40on9off8on9off (default,null): StrokeDash;
    static var Dash40on9off8on9off8on9off (default,null): StrokeDash;
    static var Dash4on3off1on3off (default,null): StrokeDash;
    static var Dash4on3off1on3off1on3off (default,null): StrokeDash;
    static var Dash4on3off4on3off1on3off (default,null): StrokeDash;

    // Four point dash segments with four point gaps.
    static var Dash4on4off (default,null): StrokeDash;

    // Four point dash alternating with one point dots, with nine
    // and five point gaps
    static var Dash4on9off1on5off (default,null): StrokeDash;

    static var Dash4on9off1on5off1on5off (default,null): StrokeDash;

    // Eight point dash alternating with one point dots, both with
    // four point gaps.
    static var Dash8on4off1on4off (default,null): StrokeDash;

    // Eight point dash with five point gaps.
    static var Dash8on5off (default,null): StrokeDash;

    static var Dash8on5off8on5off1on5off (default,null): StrokeDash;

    // Solid stroke with no dash pattern.
    static var Solid (default,null): StrokeDash;
}
