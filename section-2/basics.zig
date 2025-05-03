//! basics.zig
//! Basic Zig Syntax
//! Author: Jose Esteves de Souza Neto
//! Email: email@jose-desouza.com

///Add two numbers
pub fn addNumbers(num_1: u8, num_2: u8) u16 {
    return num_1 + num_2;
}

///Program's entry point
pub fn main() void {
    const number1: u8 = 5;
    const number2: u8 = 10;

    const Unsigned16BitInteger = u16;
    const sum_of_integers: Unsigned16BitInteger = addNumbers(number1, number2);

    @import("std").debug.print("{} + {} = {}\n", .{ number1, number2, sum_of_integers });
}
