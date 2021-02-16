// Automatically generated. Do not edit.

package omni.outliner;

@:native("FileWrapper")
extern class FileWrapper {
    static function withContents(name: Null<String>, contents: omni.outliner.Data): omni.outliner.FileWrapper;
    static function withChildren(name: Null<String>, children: Array<omni.outliner.FileWrapper>): omni.outliner.FileWrapper;
    var children (default,never): Array<omni.outliner.FileWrapper>;
    var contents (default,never): Null<omni.outliner.Data>;
    var destination (default,never): Null<omni.outliner.URL>;
    var filename: Null<String>;
    var preferredFilename: Null<String>;
    var type (default,never): omni.outliner.filewrapper.Type;

    function filenameForChild(child: omni.outliner.FileWrapper): Null<String>;
}
