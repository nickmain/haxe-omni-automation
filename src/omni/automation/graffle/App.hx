package omni.automation.graffle;

// Extra things for the Omnigraffle flavor of Application
@:native("app")
class App {

    // List of stencils that OmniGraffle currently has available.
    static var stencils (default,null): Array<Stencil>;
}
