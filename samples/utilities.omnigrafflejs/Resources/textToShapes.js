var _ = function(){
    var action = new PlugIn.Action(function(selection){
        if (typeof selection == 'undefined'){selection = document.windows[0].selection}
        this.utilities.org.epistem.omnigraffle.utilities.Utilities.textToShapes(selection)
    });

    // validation routine determines if the action menu item is enabled
    action.validate = function(selection){
        if (typeof selection == 'undefined'){selection = document.windows[0].selection}
        // check for selected graphics
        if (selection.solids.length > 0){return true} else {return false}
    };

    return action;
}();
_;