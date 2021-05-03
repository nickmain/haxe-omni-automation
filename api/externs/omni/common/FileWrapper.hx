// Automatically generated. Do not edit.

package omni.common;

@:native("FileWrapper")
extern class FileWrapper {
    static function withContents(name: Null<String>, contents: omni.common.Data): omni.common.FileWrapper;
    static function withChildren(name: Null<String>, children: Array<omni.common.FileWrapper>): omni.common.FileWrapper;
    var children (default,never): Array<omni.common.FileWrapper>;
    var contents (default,never): Null<omni.common.Data>;
    var destination (default,never): Null<omni.common.URL>;
    var filename: Null<String>;
    var preferredFilename: Null<String>;
    var type (default,never): omni.common.filewrapper.Type;

    function filenameForChild(child: omni.common.FileWrapper): Null<String>;
}
