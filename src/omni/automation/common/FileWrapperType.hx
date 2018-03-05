package omni.automation.common;

@:native("FileWrapper.Type")
extern class FileWrapperType {

    // A FileWrapper that represents a directory with zero or more child wrappers.
    static var Directory (default,null): FileWrapperType;

    // A FileWrapper that represents a regular file with data contents.
    static var File (default,null): FileWrapperType;

    // A FileWrapper that represents a symbolic link to another location.
    static var Link (default,null): FileWrapperType;
}
