package omni.automation.graffle;
import omni.automation.common.Document;

/**
 * An OmniGraffle document.
 */
@:native("GraffleDocument")
extern class GraffleDocument extends Document {

    var portfolio (default,null): Portfolio;

    var windows (default,null): Array<NSWindow>;
}
