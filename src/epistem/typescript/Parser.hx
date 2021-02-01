// Copyright © 2021, David N Main. All rights reserved.
// Licensed under the MIT License, see LICENSE file for details.

package epistem.typescript;

import haxe.io.Input;
import haxe.ds.StringMap;

enum Result {    
    finished;
    error(message: String);
}

class Parser {
    public var definitions = new StringMap<Definition>();

    var lexer: Lexer;

    public function new() {}

    public function parse(input: Input): Result {
        lexer = new Lexer(input);

        while(true) {
            final result = parseDeclaration();
            if(result != null) return result;
        }
    }

    function parseDeclaration(): Null<Result> {
        final token = lexer.read();
        return switch(token) {
            case finished: finished;
            case error(msg): error(msg);
            case word(w) if(w == "declare"): {
                null;
            }
            default: error('unexpected token $token at line ${lexer.lineNum}');
        }
    }
}