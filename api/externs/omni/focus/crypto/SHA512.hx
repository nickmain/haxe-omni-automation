// Automatically generated. Do not edit.

package omni.focus.crypto;

@:native("Crypto.SHA512")
extern class SHA512 {

    function new();

    function update(data: omni.focus.Data): Void;
    function finalize(): omni.focus.Data;
}
