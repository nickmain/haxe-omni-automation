// Automatically generated. Do not edit.

package omni.graffle;

@:native("Group")
extern class Group extends Graphic {
    var connectToGroupOnly: Bool;
    var graphics (default,never): Array<omni.graffle.Graphic>;
    var magnets: Array<omni.graffle.Point>;

    function new(graphics: Array<omni.graffle.Graphic>);

    function ungroup(): Array<omni.graffle.Graphic>;
}
