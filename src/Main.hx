import haxe.rtti.XmlParser;
import sys.io.File;
import epistem.typescript.ExternGenerator;

class Main {

    public static function main() {
        final gen = new ExternGenerator();
        gen.rootDir = "api/externs";
        gen.packageName = "omni.graffle";
        gen.generate("api/OmniGraffle.d.ts");

        final gen2 = new ExternGenerator();
        gen2.rootDir = "api/externs";
        gen2.packageName = "omni.focus";
        gen2.generate("api/OmniFocus.d.ts");

    }
}