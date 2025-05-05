//! types.zig

const print = @import("std").debug.print;

pub fn main() void {
    const unsigned_int: u8 = 15;
    _ = unsigned_int;
    const signed_int: i16 = 9;
    _ = signed_int;
    //const unsigned_neg_number: u8 = -5; //won't compile
    //_ = unsigned_neg_number;

    // Zig allows the creation of custom bit sized Integers both signed and unsigned
    // That gives the programmer a huge flexibility
    // the maximum bit amount is: 65'535
    const huge_signed_integer: i1024 = 48790213874031984273019842371098421370984231709421374023198742309432709421387439807432890742319802417389021656308743265986;
    print("{}\n", .{huge_signed_integer});

    //Floating Number types
    const pi_16: f16 = 3.14159;
    _ = pi_16;
    const pi_32: f32 = 3.14159;
    _ = pi_32;
    const pi_64: f64 = 3.14159;
    _ = pi_64;
    const pi_80: f80 = 3.14159;
    _ = pi_80;
    const pi_128: f128 = 3.14159;
    _ = pi_128;

    const a_void: void = void{};
    _ = a_void;

    // A variable can reference a type and its type will be "type"
    const unsigned_8_bit_integer: type = u8;
    _ = unsigned_8_bit_integer;

    const a_bool: bool = true;
    const type_of_a_bool: type = @TypeOf(a_bool);
    print("type of a bool: {}\n", .{type_of_a_bool});

    print("typeOf u8: {}\n", .{@typeInfo(u8)});

    const memory_addr: usize = @intFromPtr(&a_bool);
    print("memory address of a_bool: {}\n", .{memory_addr});

    comptime var mutable_int = 5;
    mutable_int = 7;
    print("type of mutable_int: {}\n", .{@TypeOf(mutable_int)});
}

fn infiniteLoop() noreturn {
    while (true) {}
}

fn logValue(value: anytype) void {
    print("{}", value);
}

fn logError(err: anyerror) void {
    _ = err;
}
