// Automatically generated. Do not edit.

package omni.outliner.languagemodel;

@:native("LanguageModel.Session")
extern class Session {
    static function withTools(tools: Array<omni.outliner.languagemodel.Tool>, instructions: Null<String>): omni.outliner.languagemodel.Session;

    function new(instructions: Null<String>);

    function respond(prompt: String): js.lib.Promise<String>;
    function respondWithSchema(prompt: String, schema: omni.outliner.languagemodel.Schema, generationOptions: Null<omni.outliner.languagemodel.GenerationOptions>): js.lib.Promise<String>;
}
