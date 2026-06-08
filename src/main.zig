const std = @import("std");
const Io = std.Io;
const rl = @import("raylib");

pub fn main(init: std.process.Init) !void {
    _ = init;
    const screenWidth = 1280;
    const screenHeight = 720;

    rl.initWindow(screenWidth, screenHeight, "Physics series");
    defer rl.closeWindow();

    rl.setTargetFPS(60);

    while (!rl.windowShouldClose()) {
        rl.beginDrawing();
        defer rl.endDrawing();

        rl.clearBackground(.white);

        rl.drawText("Initial setup done!!", 200, 200, 20, .light_gray);
    }
}
