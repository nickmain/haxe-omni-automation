package omni.automation.common;

@:native("Size")
extern class Size {
    public function new(width: Float, height: Float);

    var height: Float;
    var width: Float;
}
