// Automatically generated. Do not edit.

package omni.common;

@:native("Email")
extern class Email {
    var blindCarbonCopy: Null<epistem.typescript.Helpers.Union2<String, Array<String>>>;
    var body: Null<String>;
    var carbonCopy: Null<epistem.typescript.Helpers.Union2<String, Array<String>>>;
    var fileWrappers: Array<omni.common.FileWrapper>;
    var receiver: Null<epistem.typescript.Helpers.Union2<String, Array<String>>>;
    var subject: Null<String>;

    function new();

    function generate(): Void;
}
