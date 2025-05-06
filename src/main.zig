const std = @import("std");

extern fn dependencyFunction(str: [*:0]const u8) callconv(.C) void;

pub fn main() !void {
    const str = "Totally Secret Message";
    std.log.debug("Passing \"{s}\" to the dependency.", .{str});
    dependencyFunction(str);
}
