package omni.automation.graffle;

import omni.automation.common.Data;
import omni.automation.common.Size;

/**
 * An image inside an OmniGraffle document.
 * The image can be part of the fill for more than one ‘Solid’ graphic,
 * and all of them will refer to the same ‘ImageReference’.
 */
@:native("ImageReference")
extern class ImageReference {

    // The image data bytes.
    var data (default,null): Null<Data>;

    // Original size of the image in pixels.
    var originalSize (default,null): Size;

    // A unique (within this document) identifier for this image reference.
    var uniqueID (default,null): Float;
}
