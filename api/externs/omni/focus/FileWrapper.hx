// Automatically generated. Do not edit.

package omni.focus;

@:native("FileWrapper")
extern class FileWrapper {
    static function withContents(name: Null<String>, contents: omni.focus.Data): omni.focus.FileWrapper;
    static function withChildren(name: Null<String>, children: Array<omni.focus.FileWrapper>): omni.focus.FileWrapper;
    static function fromURL(url: omni.focus.URL, options: Null<Array<omni.focus.filewrapper.ReadingOptions>>): omni.focus.FileWrapper;
    var children (default,never): Array<omni.focus.FileWrapper>;
    var contents (default,never): Null<omni.focus.Data>;
    var destination (default,never): Null<omni.focus.URL>;
    var filename: Null<String>;
    var preferredFilename: Null<String>;
    var type (default,never): omni.focus.filewrapper.Type;

    function childNamed(name: String): Null<omni.focus.FileWrapper>;
    function filenameForChild(child: omni.focus.FileWrapper): Null<String>;
    function write(url: omni.focus.URL, options: Null<Array<omni.focus.filewrapper.WritingOptions>>, originalContentsURL: Null<omni.focus.URL>): Void;
}
