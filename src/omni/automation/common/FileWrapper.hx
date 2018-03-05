package omni.automation.common;

@:native("FileWrapper")
extern class FileWrapper {

    static function withContents(?name: String, ?contents: Data): FileWrapper;

    // Returns the unique file name that will be used for the given child FileWrapper,
    // or null if this file wrapper is not a child of the receiver.
    function filenameForChild(child: FileWrapper): Null<String>;

    // Returns an Array of child FileWrappers, if this represents a directory.
    // Otherwise, an empty array is returned.
    var children (default,null): Array<FileWrapper>;

    // Returns the regular file contents of the wrapper, if this represents
    // a regular file. Otherwise, null is returned.
    var contents (default,null): Null<Data>;

    // Returns the destination if this represents a symbolic link.
    // Otherwise, null is returned.
    var destination (default,null): Null<URL>;

    // Returns the actual file name that was last read for this file wrapper.
    // Depending on the names of other sibling wrappers, this may not be what
    // file name will be written.
    var filename: Null<String>;

    // Returns the preferred file name that should be used when writing the
    // file wrapper if no other file in the same parent directory wrapper is in use.
    var preferredFilename: Null<String>;

    // Returns the type of this FileWrapper.
    var type (default,null): FileWrapperType;
}
