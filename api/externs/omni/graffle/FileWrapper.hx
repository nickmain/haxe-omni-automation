// Automatically generated. Do not edit.

package omni.graffle;

@:native("FileWrapper")
extern class FileWrapper {
    static function withContents(name: Null<String>, contents: omni.graffle.Data): omni.graffle.FileWrapper;
    static function withChildren(name: Null<String>, children: Array<omni.graffle.FileWrapper>): omni.graffle.FileWrapper;
    var children (default,never): Array<omni.graffle.FileWrapper>;
    var contents (default,never): Null<omni.graffle.Data>;
    var destination (default,never): Null<omni.graffle.URL>;
    var filename: Null<String>;
    var preferredFilename: Null<String>;
    var type (default,never): omni.graffle.filewrapper.Type;

    function filenameForChild(child: omni.graffle.FileWrapper): Null<String>;
}
