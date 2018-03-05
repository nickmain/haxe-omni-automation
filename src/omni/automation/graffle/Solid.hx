package omni.automation.graffle;

import omni.automation.common.Size;
import omni.automation.common.Rect;
import omni.automation.common.Color;
import omni.automation.common.Point;

/**
 * A solid graphic is one that potentially has a fill, image, and text - as opposed to a
 * ‘Line’, which has only a stroke.
 * Almost all solid graphics will actually be the subclass ‘Shape’, but a canvas
 * background is a ‘Solid’ without being a ‘Shape’.
 */
@:native("Solid")
extern class Solid extends Graphic {

    // Autosizing behavior of the graphic when the text size changes.
    var autosizing: TextAutosizing;

    // The middle color of a three color gradient fill, if the fill style includes such.
    var blendColor: Null<Color>;

    // The middle fraction of a three color gradient fill, if the fill style includes such.
    var blendFraction: Float;

    // Color of the fill for this graphic.
    var fillColor: Null<Color>;

    // Style of fill for this graphic.
    var fillType: Null<FillType>;

    // Font of text in this graphic. This is the Font’s “Postscript name”,
    // as displayed in the Font Book application’s Font Info pane on the Mac.
    // Where there are multiple fonts, this returns the first character’s font.
    // Setting this value sets it for all text in the graphic.
    var fontName: String;

    // For linear gradients, the angle at which the gradient is drawn.
    var gradientAngle: Float;

    // For radial gradients, the position of the center of the gradient.
    var gradientCenter: Point;

    // For gradient fills, the second color (along with the fill color) that the
    // fill goes between.
    var gradientColor: Null<Color>;

    // Image fill for this graphic, if any.
    var image: Null<ImageReference>;

    // Positioning offset of the image fill. This is the difference between the
    // image origin and the graphic origin in percentage terms.
    var imageOffset: Point;

    // Opacity percentage for the image fill for this graphic.
    var imageOpacity: Float;

    // Page number to display for the given image, if relevant.
    // Mainly useful for PDF images, which are potentially multiple pages.
    var imagePage: Float;

    // Scaling of the image fill. This is a multiplier between the displayed
    // size and original image size.
    var imageScale: Size;

    // Type of sizing behavior for the image, if any.
    var imageSizing: ImageSizing;

    // Array of connection magnets for this graphic.
    var magnets: Array<Point>;

    // Text contents of this graphic.
    var text: String;

    // Color of the text in this graphic. Where there are multiple colors,
    // this returns the first character’s color. Setting this value sets it
    // for all text in the graphic.
    var textColor: Color;

    // Drawing bounds of the text in canvas coordinates.
    var textGeometry (default,null): Rect;

    // Alignment of the text in this graphic horizontally.
    var textHorizontalAlignment: HorizontalTextAlignment;

    // Horizontal padding between the edge of the graphic’s bounds and the
    // edge of the text area where text is drawn.
    var textHorizontalPadding: Float;

    // Rotation of the text.
    var textRotation: Float;

    // Whether the text rotation is relative to the existing rotation of
    // the graphic itself, or whether it is constant compared to the canvas.
    var textRotationIsRelative: Bool;

    // Font size of text in this graphic. Where there are multiple fonts,
    // this returns the first character’s font size. Setting this value sets
    // it for all text in the graphic.
    var textSize: Float;

    // Size and position of the graphics’ text area as a unit square.
    // I.e. The x and y are in terms of proportion of graphic size from the
    // graphic bounds (so 0,0 is the graphic origin, (1,1) originates at the
    // graphic’s lower-righthand corner, and the width and height are the scale
    // of the text area in proportion to the graphic, so (1,1) is the same size
    // as the graphic bounds, (2,2) would be twice as large, etc.
    var textUnitRect: Rect;

    // Vertical padding between the edge of the graphic’s bounds and the edge of
    // the text area where text is drawn.
    var textVerticalPadding: Float;

    // Alignment of the text in this graphic vertically.
    var textVerticalPlacement: VerticalTextPlacement;

    // Whether the text wraps to the graphic’s bounds, or can go as wide as
    // it wishes outside the graphic bounds.
    var textWraps: Bool;

    // Whether the fill includes three colors in a gradient.
    var tripleBlend: Bool;
}
