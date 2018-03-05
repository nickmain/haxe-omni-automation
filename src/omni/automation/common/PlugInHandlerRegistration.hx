package omni.automation.common;

@:native("PlugIn.Handler.Registration")
extern class PlugInHandlerRegistration {

    // Removes a previously added event observation.
    function remove(): Void;
}
