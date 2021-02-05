import haxe.rtti.XmlParser;
import sys.io.File;
import epistem.typescript.ExternGenerator;

class Main {

    public static function main() {
        final gen = new ExternGenerator();
        gen.rootDir = "api/externs";
        gen.packageName = "omni.graffle";
        gen.generate("api/OmniGraffle.d.ts");
    }
}