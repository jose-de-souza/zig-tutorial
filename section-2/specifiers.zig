pub fn main() void {
    const number: u8 = 65;

    @import("std").debug.print("Default: {}\n", .{number});
    @import("std").debug.print("Decimal: {d}\n", .{number});
    @import("std").debug.print("Hexadecimal: {x}\n", .{number});
    @import("std").debug.print("Octal: {o}\n", .{number});
    @import("std").debug.print("Binary: {b}\n", .{number});
    @import("std").debug.print("Character: {c}\n", .{number});
    @import("std").debug.print("Any: {any}\n", .{number});
    @import("std").debug.print("String: {s}\n", .{"Sixty Five"});

    //For String values the specifier {s} is used.
    //For Optional values the specifier {?} is used.
    //The specifier {any} is going to print the value in its default format.
}
