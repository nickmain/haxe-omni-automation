// Automatically generated. Do not edit.

package omni.graffle.crypto;

@:native("Crypto.SHA384")
extern class SHA384 {

    function new();

    function update(data: omni.graffle.Data): Void;
    function finalize(): omni.graffle.Data;
}
