if (instance_place(x, y + 1, objGround)) {
    gravity = 0;
    vspeed = 0;
} else {
    gravity = 1.2;
}

if (keyboard_check(ord("A")) && !instance_place(x - move_speed, y, objGround)) {
    x += -move_speed;
    image_xscale = -1;
}

if (keyboard_check(ord("D")) && !instance_place(x + move_speed, y, objGround)) {
    x += move_speed;
    image_xscale = 1;
}

if (keyboard_check(ord("W"))) {
    if (instance_place(x, y + 1, objGround)) {
        vspeed = jump_height;
        gravity = 0;
    }
}

