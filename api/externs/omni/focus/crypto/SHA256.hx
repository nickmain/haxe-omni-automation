// Automatically generated. Do not edit.

package omni.focus.crypto;

@:native("Crypto.SHA256")
extern class SHA256 {

    function new();

    function update(data: omni.focus.Data): Void;
    function finalize(): omni.focus.Data;
}
