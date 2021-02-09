// Copyright © 2021, David N Main. All rights reserved.
// Licensed under the MIT License, see LICENSE file for details.

package epistem.omni.graffle;

import js.Syntax;
import omni.graffle.PlugIn;
import omni.graffle.GraffleDocument;
import omni.graffle.Canvas;
import omni.graffle.Console;
import omni.graffle.Application;

// Access to the global objects defined in Omnigraffle
class Globals {

    public static var app(get,never): Application;
    public static var console(get,never): Console;
    public static var document(get,never): GraffleDocument;
    public static var thisPlugin(get,never): PlugIn;

    static function get_app(): Application { return Syntax.plainCode("app"); }
    static function get_console(): Console { return Syntax.plainCode("console"); }
    static function get_document(): GraffleDocument { return Syntax.plainCode("document"); }
    static function get_thisPlugin(): PlugIn { return js.Lib.global; }
}