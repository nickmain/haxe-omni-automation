package omni.automation.graffle;

import omni.automation.common.Data;

/**
 * A Portfolio represents the main contents of an OmniGraffle Document and
 * is used as the global object in any scripting session that is related
 * to a particular document.
 */
@:native("Portfolio")
extern class Portfolio {

    // List of canvases in the portfolio.
    var canvases (default,null): Array<Canvas>;

    // No documentation available.
    var document (default,null): Null<GraffleDocument>;

    // A list of all images referenced by any graphic in this document.
    // Each ImageReference is a unique image and appears only once in the list,
    // even if it is used as the image fill for multiple graphics.
    var images (default,null): Array<ImageReference>;

    // Add a new canvas to the end of the current canvases.
    function addCanvas(): Null<Canvas>;

    // Add an image to the document given some image data.
    // The resulting ImageReference can then be set as the image fill
    // of any number of Solid graphics on canvases within this document.
    // Returns nil if the data could not be interpreted as a valid image.
    function addImage(data: Data): Null<ImageReference>;

    // Copy an image from another document or stencil to this one.
    function copyImage(image: ImageReference): Null<ImageReference>;

}
