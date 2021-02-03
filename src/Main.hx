import haxe.rtti.XmlParser;
import sys.io.File;
import epistem.typescript.Parser;

class Main {

    static function parseFile(path: String) {
        final parser = new Parser();
        final input = File.read(path, false);

        try {
            final result = parser.parse(input);

            switch(result) {
                case finished: {
                    trace(path + " => FINISHED");
                }

                case error(message): {
                    trace('$path => ERROR : $message');
                }
            }
        }
        catch(e) {
            trace(e.message);
        }
    }

    public static function main() {
        parseFile("api/OmniGraffle.d.ts");
        parseFile("api/OmniFocus.d.ts");
    }
}