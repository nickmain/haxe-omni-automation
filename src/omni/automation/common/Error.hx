package omni.automation.common;

@:native("Error")
extern class Error {
    public function new(message: String);

    var message: String;
}
