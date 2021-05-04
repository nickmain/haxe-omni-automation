// Copyright © 2021, David N Main. All rights reserved.
// Licensed under the MIT License, see LICENSE file for details.

package epistem.omni.graffle;

import omni.common.ToolbarItem;
import omni.common.MenuItem;
import epistem.typescript.Helpers.Union2;
import omni.graffle.Selection;

abstract class Action {    
    function new() {}

    // Perform the action
    public abstract function perform(selection: Selection, sender: Null<Union2<ToolbarItem, MenuItem>>): Void;

    // Determine whether this action can be invoked on the given selection
    public function validate(selection: Selection, sender: Null<Union2<ToolbarItem, MenuItem>>): Bool {
        return true;
    }
}