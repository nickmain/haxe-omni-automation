// Automatically generated. Do not edit.

package omni.graffle.crypto;

@:native("Crypto.SHA256")
extern class SHA256 {

    function new();

    function update(data: omni.graffle.Data): Void;
    function finalize(): omni.graffle.Data;
}
