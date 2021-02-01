import haxe.rtti.XmlParser;
import sys.io.File;
import epistem.typescript.Parser;

class Main {

    public static function main() {
        final input = File.read("api/OmniGraffle.d.ts", false);
        final parser = new Parser();

        final result = parser.parse(input);

        switch(result) {
            case finished: {
                trace("FINISHED");
            }

            case error(message): {
                trace('ERROR : $message');
            }
        }
    }
}