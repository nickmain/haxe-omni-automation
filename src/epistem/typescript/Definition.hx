// Copyright © 2021, David N Main. All rights reserved.
// Licensed under the MIT License, see LICENSE file for details.

package epistem.typescript;

class Definition {
    public var shouldGenerate = true;
    public var targetName: String = "";
    public var name: String;
    public var nativeName: String;
    public var superclass: Null<String>;
    public var constructor: Null<Array<Argument>>;
    public var statics = new Array<Member>();
    public var members = new Array<Member>();

    public function new(name: String) {
        this.name = name;
        nativeName = name;
    }

    public function isSameAs(other: Definition): Bool {
        if(name != other.name) return false;
        if(superclass != other.superclass) return false;
        if(constructor == null && other.constructor != null) return false;

        if(constructor != null) {
            if(other.constructor == null) return false;
            if(constructor.length != other.constructor.length) return false;

            for(i in 0...constructor.length) {
                final arg = constructor[i];
                final otherArg = other.constructor[i];
                if(arg.name != otherArg.name) return false;
                if(!typeEquals(arg.type, otherArg.type)) return false;
            }
        }

        if(!memberArrayEquals(statics, other.statics)) return false;
        if(!memberArrayEquals(members, other.members)) return false;

        return true;
    }
}

enum Member {
    prop(name: String, readonly: Bool, type: Type);
    func(name: String, args: Array<Argument>, type: Null<Type>);
} 

typedef Argument = {name: String, type: Type}; 

enum Type {
    name(name: String);
    nullable(type: Type);
    generic(type: Type, params: Array<Type>);
    union(types: Array<Type>);
}

function memberEquals(a: Member, b: Member): Bool {
    return switch a {
        case prop(n, ro, t): switch b {
            case prop(n2, ro2, t2): n == n2 && ro == ro2 && typeEquals(t, t2);
            default: false;
        }
        case func(n, a, t): switch b {
            case func(n2, a2, t2): n == n2 && argumentArrayEquals(a, a2) && typeEquals(t, t2);
            default: false;
        }
    }
}

function typeEquals(a: Type, b: Type): Bool {
    if(a == null) return b == null;
    if(b == null) return a == null;

    return switch a {
        case name(n): switch b {
            case name(n2): n == n2;
            default: false;
        }
        case nullable(t): switch b {
            case nullable(t2): typeEquals(t, t2);
            default: false;
        }
        case generic(t, ps): switch b {
            case generic(t2, ps2): typeEquals(t, t2) && typeArrayEquals(ps, ps2);
            default: false;
        }
        case union(ts): switch b {
            case union(ts2): typeArrayEquals(ts, ts2);
            default: false;
        }
    }
}

function argumentArrayEquals(a: Array<Argument>, b: Array<Argument>): Bool {
    if(a.length != b.length) return false;
    for(i in 0...a.length) {
        if(a[i].name != b[i].name) return false;
        if(!typeEquals(a[i].type, b[i].type)) return false;
    }

    return true;
}

function typeArrayEquals(a: Array<Type>, b: Array<Type>): Bool {
    if(a.length != b.length) return false;
    for(i in 0...a.length) {
        if(!typeEquals(a[i], b[i])) return false;
    }

    return true;
}

function memberArrayEquals(a: Array<Member>, b: Array<Member>): Bool {
    if(a.length != b.length) return false;
    for(i in 0...a.length) {
        if(!memberEquals(a[i], b[i])) return false;
    }

    return true;
}