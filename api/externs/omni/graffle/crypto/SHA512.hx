// Automatically generated. Do not edit.

package omni.graffle.crypto;

@:native("Crypto.SHA512")
extern class SHA512 {

    function new();

    function update(data: omni.graffle.Data): Void;
    function finalize(): omni.graffle.Data;
}
