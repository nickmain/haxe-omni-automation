// Copyright © 2021, David N Main. All rights reserved.
// Licensed under the MIT License, see LICENSE file for details.

package epistem.typescript;

import haxe.io.Input;
import haxe.ds.StringMap;

enum Result {    
    finished;
    error(message: String);
}

// Minimum viable parser for Omni typescript definitions
class Parser {
    public var definitions = new StringMap<Definition>();

    var lexer: Lexer;

    public function new() {}

    public function parse(input: Input): Result {
        lexer = new Lexer(input);

        while(parseDeclaration()) {}

        return finished;
    }

    function parseDeclaration(): Bool {
        final token1 = lexer.read();
        final token2 = lexer.read();

        switch [token1, token2] {
            case [finished, finished]: return false;
            case [word("declare"), word("class")]: parseClass();
            case [word("declare"), word("namespace")]: parseNamespace();
            default: throw 'unexpected tokens "$token1 $token2" at line ${lexer.lineNum} - expected "declare class/namespace"';
        }

        return true;
    }

    function parseClass() {

        // extends
    }

    function parseNamespace() {
        
    }

    function parseDeclarationName(): Array<String> {

    }
}