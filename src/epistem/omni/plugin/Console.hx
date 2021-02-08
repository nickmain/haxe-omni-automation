// Copyright © 2021, David N Main. All rights reserved.
// Licensed under the MIT License, see LICENSE file for details.

package epistem.omni.plugin;

// Static access to the console global instance
 @:native("console")
 extern class Console {
    static function log(message: Dynamic, additional: Array<Null<Dynamic>>): Void;
    static function error(message: Dynamic, additional: Array<Null<Dynamic>>): Void;
    static function info(message: Dynamic, additional: Array<Null<Dynamic>>): Void;
    static function warn(message: Dynamic, additional: Array<Null<Dynamic>>): Void;
    static function clear(): Void;
 }