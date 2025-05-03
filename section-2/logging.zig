pub fn main() void {
    @import("std").log.debug("debug", .{});
    @import("std").log.warn("warn", .{});
    @import("std").log.info("info", .{});
    @import("std").log.err("err", .{});
}
