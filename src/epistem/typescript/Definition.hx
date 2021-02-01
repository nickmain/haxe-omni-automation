// Copyright © 2021, David N Main. All rights reserved.
// Licensed under the MIT License, see LICENSE file for details.

package epistem.typescript;

class Definition {
    public var packageName = new Array<String>();
    public var name: String;
    public var constructor: Null<Array<Argument>>;
    public var statics = new Array<Member>();
    public var members = new Array<Member>();

    public function new(name: String) {
        this.name = name;
    }
}

enum Member {
    prop(name: String, readonly: Bool, type: Type);
    func(name: String, args: Array<Argument>, type: Null<Type>);
} 

typedef Argument = {name: String, type: Type}; 

enum Type {
    nullable(type: Type);
    generic(type: Array<String>, params: Array<Type>);
    union(types: Array<Type>);
}