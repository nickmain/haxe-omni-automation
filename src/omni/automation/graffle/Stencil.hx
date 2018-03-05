package omni.automation.graffle;

@:native("Stencil")
extern class Stencil {

    // Array of graphics available on the stencil.
    var graphics (default,null): Array<Graphic>;

    // A list of all images referenced by any graphic in this stencil.
    // Each ImageReference is a unique image and appears only once in the
    // list, even if it is used as the image fill for multiple graphics.
    var images (default,null): Array<ImageReference>;

    // Whether or not this stencil has already been loaded into memory.
    var isLoaded (default,null): Bool;

    // Name of the stencil.
    var name (default,null): String;

    // Load this stencil document into memory so its graphics and images
    // can be accessed.
    function load(completed: Stencil -> Void): Void;
}
