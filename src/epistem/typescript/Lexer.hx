// Copyright © 2021, David N Main. All rights reserved.
// Licensed under the MIT License, see LICENSE file for details.

package epistem.typescript;

import haxe.io.Input;

enum Token {
    word(value: String);
    openParen;
    closeParen;
    openBrace;
    closeBrace;
    colon;
    comma;
    bar;
    semicolon;
    openAngle;
    closeAngle;
    period;
    arrow;

    finished;
}

class Char {
    public static inline final openParen   = "(";
    public static inline final closeParen  = ")";
    public static inline final openBrace   = "{";
    public static inline final closeBrace  = "}";
    public static inline final colon       = ":";
    public static inline final comma       = ",";
    public static inline final bar         = "|";
    public static inline final semicolon   = ";";
    public static inline final openAngle   = "<";
    public static inline final closeAngle  = ">";
    public static inline final period      = ".";
    public static inline final slash       = "/";
    public static inline final equals      = "=";
    public static inline final greaterThan = ">";

    public static inline function isAlphanumeric(char: String): Bool {
        return isLetter(char) || isDecimalDigit(char) || char == "_";
    }

    public static inline function isLetter(char: String): Bool {
        return isCapitalLetter(char) || isSmallLetter(char) || char == "_";
    }

    public static inline function isDecimalDigit(char: String): Bool {
        return char == "0" || char == "1" || char == "2" || char == "3" || char == "4"
            || char == "5" || char == "6" || char == "7" || char == "8" || char == "9";
    }

    public static inline function isCapitalLetter(char: String): Bool {
        return char == "A" || char == "B" || char == "C" || char == "D" || char == "E"
            || char == "F" || char == "G" || char == "H" || char == "I" || char == "J"
            || char == "K" || char == "L" || char == "M" || char == "N" || char == "O"
            || char == "P" || char == "Q" || char == "R" || char == "S" || char == "T"
            || char == "U" || char == "V" || char == "W" || char == "X" || char == "Y"
            || char == "Z";
    }

    public static inline function isSmallLetter(char: String): Bool {
        return char == "a" || char == "b" || char == "c" || char == "d" || char == "e"
            || char == "f" || char == "g" || char == "h" || char == "i" || char == "j"
            || char == "k" || char == "l" || char == "m" || char == "n" || char == "o"
            || char == "p" || char == "q" || char == "r" || char == "s" || char == "t"
            || char == "u" || char == "v" || char == "w" || char == "x" || char == "y"
            || char == "z";
    }

    public static inline function isLayout(char: String): Bool {
        return char == space 
            || char == horizontalTab
            || char == newline 
            || char == carriageReturn 
            || char == verticalTab
            || char == formfeed;
    } 

    public static inline final space          = " ";
    public static inline final horizontalTab  = "\t";
    public static inline final newline        = "\n";
    public static inline final carriageReturn = "\r";
    public static inline final verticalTab    = "\x0B";
    public static inline final formfeed       = "\x0C";
}

enum LexerState {
    ready;
    finished;
}

class Lexer {
    public var lineNum = 0;
    var state = LexerState.ready;
    var line: String;
    var index = 0;

    final input: Input;

    public function new(input: Input) {
        this.input = input;
        readNextLine();
    }

    public function read(): Token {
        if(index >= line.length) {
            readNextLine();
        }

        return switch(state) {
            case finished: finished;
            case ready: {
                final c = line.charAt(index++);

                if(Char.isLayout(c)) skipWhitespace();
                else if(Char.isLetter(c)) collectWord();
                else if(c == Char.equals) collectArrow();
                else switch(c) {
                    case Char.slash: skipComment();
                    case Char.openParen: openParen;
                    case Char.closeParen: closeParen;
                    case Char.openBrace: openBrace;
                    case Char.closeBrace: closeBrace;
                    case Char.colon: colon;
                    case Char.comma: comma;
                    case Char.bar: bar;
                    case Char.semicolon: semicolon;
                    case Char.openAngle: openAngle;
                    case Char.closeAngle: closeAngle;
                    case Char.period: period;
                    default: throw 'Unexpected char "$c" in line $lineNum';
                }
            }
        }
    }

    function skipWhitespace(): Token {
        while(Char.isLayout(line.charAt(index))) index++;
        return read();
    }

    function collectArrow(): Token {
        final c = line.charAt(index++);
        if(c == Char.greaterThan) {
            return arrow;
        }
        else {
            throw 'Expected ">" after "=" but found "$c" in line $lineNum';
        }
    }

    function collectWord(): Token {
        final start = index - 1;
        while(Char.isAlphanumeric(line.charAt(index))) index++;
        return word(line.substring(start, index));
    }

    function skipComment(): Token {
        return if(line.charAt(index) == Char.slash) {
            readNextLine();
            read();
        }
        else {
            throw 'Expected another slash after slash in line $lineNum';
        }
    }

    function readNextLine() {
        try {
            while(true) {
                line = input.readLine();
                lineNum++;
                if(line.length > 0) break;
            }
            index = 0;            
            state = ready;
        } 
        catch(_: haxe.io.Eof) {
            state = finished;
        }
        catch(e) {
            throw e;
        }
    }
}