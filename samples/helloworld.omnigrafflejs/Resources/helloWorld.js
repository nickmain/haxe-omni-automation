var _ = function(){
    var action = new PlugIn.Action(function(selection){
        if (typeof selection == 'undefined'){selection = document.windows[0].selection}
        this.haxeCode.samples.HelloWorld.helloWorld(selection)
    });

    // validation routine determines if the action menu item is enabled
    action.validate = function(selection){
        if (typeof selection == 'undefined'){selection = document.windows[0].selection}
        // check for selected graphics
        if (selection.solids.length > 0){return true} else {return false}
    };

    console.log("Plugin.Action helloWorld");

    return action;
}();
_;