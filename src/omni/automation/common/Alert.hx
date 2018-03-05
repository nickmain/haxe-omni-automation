package omni.automation.common;

@:native("Alert")
extern class Alert {
    public function new(title: String, text: String)

    // Bring the alert panel forward to display it.
    // Callback receives option index
    function show(callback: Float -> Void ): Void;

    function addOption(string: String): Void;
}
