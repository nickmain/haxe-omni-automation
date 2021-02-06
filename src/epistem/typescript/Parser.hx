// Copyright © 2021, David N Main. All rights reserved.
// Licensed under the MIT License, see LICENSE file for details.

package epistem.typescript;

import epistem.typescript.Definition.Argument;
import epistem.typescript.Lexer.Token;
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
    var tokens = new Array<Token>();

    public function new() {}

    public function parse(input: Input): Result {
        lexer = new Lexer(input);

        while(parseDeclaration()) {}

        return finished;
    }

    function nextToken(): Token {
        if(tokens.length > 0) return tokens.shift();
        return lexer.read();
    }

    function pushBack(token: Token) {
        tokens.unshift(token);
    }

    function expectSemicolon() {
        final token = nextToken();
        if(! token.match(semicolon)) throw msg(token, "semicolon");
    }

    function expectColon() {
        final token = nextToken();
        if(! token.match(colon)) throw msg(token, "colon");
    }

    function parseDeclaration(): Bool {
        final token1 = nextToken();
        final token2 = nextToken();

        switch [token1, token2] {
            case [finished, finished]: return false;
            case [word("declare"), word("class")]: parseClass();
            case [word("declare"), word("namespace")]: parseNamespace();
            default: throw 'unexpected tokens "$token1 $token2" at line ${lexer.lineNum} - expected "declare class/namespace"';
        }

        return true;
    }

    function parseClass() {
        final definition = getDefinition(parseName());
        definition.superclass = parseSuperclass();

        final open = nextToken();
        if(! open.match(openBrace)) throw msg(open, "open-brace");

        while(parseClassMember(definition)) {}

        final close = nextToken();
        if(! close.match(closeBrace)) throw msg(close, "close-brace");
    }

    function parseClassMember(definition: Definition): Bool {
        final token1 = nextToken();
        final token2 = nextToken();

        switch [token1, token2] {
            case [word("constructor"), openParen]: parseConstructor(definition);
            case [word("readonly"), word(w)]: parseReadOnly(w, definition);
            case [word(w), openParen]: parseClassFunction(w, definition);
            case [word(w), colon]: parseClassProp(w, definition);
            default: {
                pushBack(token2);
                pushBack(token1);
                return false;
            }
        }

        return true;
    }

    function parseSimpleType(): Definition.Type {
        final typeName = parseName();
        var token = nextToken();

        if(token.match(openAngle)) {
            return parseGenericType(typeName);
        } 

        pushBack(token);
        return name(typeName);
    }

    function parseType(): Definition.Type {
        var types = new Array<Definition.Type>();

        while(true) {
            types.push(parseSimpleType());

            final token = nextToken();
            switch(token) {
                case bar: continue;
                default: {
                    pushBack(token);
                    break;
                }
            }
        }

        if(types.length == 1) return types[0];

        // something|null is a nullable type
        if(types.length == 2 && types[1].match(name("null"))) {
            return nullable(types[0]);
        }

        return union(types);
    }

    function parseGenericType(name: String): Definition.Type {
        var params = new Array<Definition.Type>();

        while(true) {
            params.push(parseType());

            final token = nextToken();
            switch(token) {
                case comma: continue;
                case closeAngle: return generic(Definition.Type.name(name), params);
                default: throw msg(token, "comma or closeAngle");
            }
        }
    }

    function parseArgList(): Array<Argument> {
        var args = new Array<Argument>();

        var token = nextToken();
        if(token.match(closeParen)) return args;
        pushBack(token);

        while(true) {
            final name = parseName();
            
            token = nextToken();
            if(! token.match(colon)) throw msg(token, "colon");
            
            final type = parseType();

            args.push({name: name, type: type});

            token = nextToken();
            switch(token) {
                case comma: continue;
                case closeParen: break;
                default: throw msg(token, "comma or close-paren");
            }            
        }

        return args;
    }

    function parseClassFunction(name: String, definition: Definition) {
        final args = parseArgList();
        var token = nextToken();
        switch(token) {
            case colon: {
                final retType = parseType();
                expectSemicolon();
                definition.members.push(func(name, args, retType));
            }
            case semicolon: definition.members.push(func(name, args, null));
            default: throw msg(token, "colon or semicolonn");
        }
    }

    function parseClassProp(name: String, definition: Definition) {
        // colon already consumed
        final type = parseType();
        expectSemicolon();
        definition.members.push(prop(name, false, type));
    }

    function parseReadOnly(name: String, definition: Definition) {
        expectColon();
        final type = parseType();
        expectSemicolon();
        definition.members.push(prop(name, true, type));
    }

    function parseConstructor(definition: Definition) {
        final args = parseArgList();
        expectSemicolon();

        definition.constructor = args;
    }

    function parseNamespace() {
        final definition = getDefinition(parseName());
        final open = nextToken();
        if(! open.match(openBrace)) throw msg(open, "open-brace");

        while(parseNamespaceMember(definition)) {}

        final close = nextToken();
        if(! close.match(closeBrace)) throw msg(close, "close-brace");
    }

    function parseNamespaceMember(definition: Definition): Bool {
        final token1 = nextToken();
        final token2 = nextToken();

        switch [token1, token2] {
            case [word("const"), word(w)]: parseConst(w, definition);
            case [word("let"), word(w)]: parseLet(w, definition);
            case [word("function"), word(w)]: parseNamespaceFunction(w, definition);
            case [word("class"), word(w)]: parseNamespaceClass('${definition.name}.$w');
            default: {
                pushBack(token2);
                pushBack(token1);
                return false;
            }
        }

        return true;
    }

    function parseNamespaceClass(name: String) {
        final definition = getDefinition(name);
        definition.superclass = parseSuperclass();

        final open = nextToken();
        if(! open.match(openBrace)) throw msg(open, "open-brace");

        while(parseClassMember(definition)) {}

        final close = nextToken();
        if(! close.match(closeBrace)) throw msg(close, "close-brace");
    }

    function parseNamespaceFunction(name: String, definition: Definition) {
        var token = nextToken();
        if(! token.match(openParen)) throw msg(token, "open-paren");

        final args = parseArgList();
        token = nextToken();
        switch(token) {
            case colon: {
                final retType = parseType();
                expectSemicolon();
                definition.statics.push(func(name, args, retType));
            }
            case semicolon: definition.statics.push(func(name, args, null));
            default: throw msg(token, "colon or semicolonn");
        }
    }

    function parseConst(name: String, definition: Definition) {
        expectColon();
        final type = parseType();
        expectSemicolon();
        definition.statics.push(prop(name, true, type));
    }

    function parseLet(name: String, definition: Definition) {
        expectColon();
        final type = parseType();
        expectSemicolon();
        definition.statics.push(prop(name, false, type));
    }

    function parseSuperclass(): Null<String> {
        final token1 = nextToken();
        if(token1.match(word("extends"))) {
            return parseName();
        }
        
        pushBack(token1);
        return null;
    }

    function getDefinition(name: String): Definition {
        var definition = definitions.get(name);

        if(definition == null) {
            definition = new Definition(name);
            definitions.set(name, definition);
        }

        return definition;
    }

    function parseName(): String {
        final words = new Array<String>();

        while(true) {
            final token1 = nextToken();
            final token2 = nextToken();
    
            switch [token1, token2] {
                case [word(w), period]: words.push(w);
                case [word(w), _]: {
                    words.push(w);
                    pushBack(token2);
                    break;
                }
                default: throw msg(token1, "a name word");
            }
        }

        return words.join(".");
    }

    function msg(found: Token, expected: String): String {
        return 'unexpected token "$found" at line ${lexer.lineNum} - expected $expected';
    }
}