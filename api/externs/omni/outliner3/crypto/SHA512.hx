// Automatically generated. Do not edit.

package omni.outliner.crypto;

@:native("Crypto.SHA512")
extern class SHA512 {

    function new();

    function update(data: omni.outliner.Data): Void;
    function finalize(): omni.outliner.Data;
}
