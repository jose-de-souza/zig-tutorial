pub fn main() void {
    const array1: [3]u8 = [3]u8{ 2, 5, 7 };
    const array2: [3]u8 = [3]u8{ 2, 5, 7 };

    const arrays_are_equal: bool = @import("std").mem.eql(u8, &array1, &array2);

    @import("std").debug.print("Arrays are equal: {}\n", .{arrays_are_equal});
}
