package omni.automation.outliner;

@:native("FileType")
extern class FileType {
    // The list of FileTypes that can be read by this application.
    static var readableTypes (default,null): Array<FileType>;

    // The list of FileTypes that can be written by this application
    // (though some documents may be exportable only in a subset of these types).
    static var writableTypes (default,null): Array<FileType>;

    // Returns a human-readable description of the file type.
    var displayName (default,null): String;

    // Returns a unique identifier for a file type, suitable for archiving
    // or encoding in scripts.
    var identifier (default,null): String;

    // The list of filesystem path extensions used by this file type.
    var pathExtensions (default,null): Array<String>;
}
