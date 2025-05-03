//! variables.zig

const top_level_variable: u8 = 10;
const using_my_custom_type: MyCustomUnsigned8BitInteger = 19;
// The definition order doesn't matter
const MyCustomUnsigned8BitInteger = u8;

//Assigning a function to a variable
const print = @import("std").debug.print;

pub fn main() void {
    var mutable_num: u8 = 13;
    const const_num: u8 = 5;

    //reassign the mutable variable
    // mutable_num = 0;

    // or assign its memory address to underscore in order to get rid of the
    // compiler error: local variable is never mutated
    // Get the memory address of a variable with the ampersand operator
    _ = &mutable_num;

    // get rid of the compiler error: unused local constant
    _ = const_num;

    // compiler error when trying to reassign a const variable
    // const_num = 3;

    // The type of constants can be ommitted leaving the decision to the compiler
    const const_value = 78;
    _ = const_value;

    // mutable variable must have the type specified unless it is a very specific type like boolean
    //var mutable_value = 45; // won't compile

    var mutable_boolean = true; // works fine
    _ = &mutable_boolean;

    // The name of a variable must start with a letter or underscore _
    // followed by ony alphanumeric characters or underscore
    //const some_n$umber = 10; // won't compile
    // the following syntax gets around that restriction though
    const @"some_n$umber" = 10;
    _ = @"some_n$umber"; // compiles

    //Using a variable that references a function
    print("Hello {s}\n", .{"Zig!"});

    //Local variables cannot shadow variable names from the outter scope
    // const using_my_custom_type = 12; // won't compile: local constant shadows declaration of 'using_my_custom_type'

    // The primitive values are
    // null, undefined, true, false

    const a_boolean = true;
    _ = a_boolean;
    // null can be assigned to optional types
    const optional: ?u8 = null;
    _ = optional;
    // undefied can be used with any type
    // and leaves the variable uninitialized
    // BUT there is no way to determine if a variable is undefined
    // Use it only if the subsequent initialization of the variable is certain
    var undefined_value: u8 = undefined;
    var undefined_boolean: bool = undefined;
    _ = &undefined_value;
    _ = &undefined_boolean;

    print("undefined variables: {} {}\n", .{ undefined_value, undefined_boolean });
}
