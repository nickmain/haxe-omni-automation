var _ = function(){
    var action = new PlugIn.Handler(function(a, b, c){
        console.log("PluginHandler a ", [a]);
        console.log("PluginHandler b ", [b]);
        console.log("PluginHandler c ", [JSON.stringify(c)]);
    });

    action.willAttach = function(a, b, c) {
        console.log("PluginHandler.willAttach " + a);
        console.log("PluginHandler.willAttach " + b);
        console.log("PluginHandler.willAttach " + c);

        return {foo: "bar"};
    }

    action.willDetach = function(a, b, c) {
        console.log("PluginHandler.willDetach " + a);
        console.log("PluginHandler.willDetach " + b);
        console.log("PluginHandler.willDetach " + c);
    }

    console.log("Plugin.Handler handlerFoo");

    return action;
}();
_;