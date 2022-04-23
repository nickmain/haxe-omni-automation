// Automatically generated. Do not edit.

package omni.outliner.crypto;

@:native("Crypto.SHA256")
extern class SHA256 {

    function new();

    function update(data: omni.outliner.Data): Void;
    function finalize(): omni.outliner.Data;
}
