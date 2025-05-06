const std = @import("std");

// Export a handy dandy C function
pub export fn dependencyFunction(str: [*:0]const u8) callconv(.C) void {
    std.log.debug("The dependency received \"{s}\" and says hi!", .{str});
}
