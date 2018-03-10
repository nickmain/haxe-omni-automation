package omni.automation.outliner;

import omni.automation.common.FileWrapper;

/**
 * A set of parameters for generating an email.
 */
@:native("Email")
extern class Email {
    public function new();

    var blindCarbonCopy: Null<String>;
    var body: Null<String>;
    var carbonCopy: Null<String>;
    var fileWrappers: Array<FileWrapper>;
    var receiver: Null<String>;
    var subject: Null<String>;

    // Presents the generated email to the user for them to send (or discard).
    // On iOS, any included attachment FileWrappers that are directories will
    // be converted to Zip files.
    function generate(): Void;

}
