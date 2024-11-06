if (instance_place(x, y + 1, objGround)) {
    gravity = 0;
    vspeed = 0;
} else {
    gravity = 1.2;
}

if (keyboard_check(ord("J")) && !instance_place(x - move_speed, y, objGround)) {
    x += -move_speed;
}

if (keyboard_check(ord("L")) && !instance_place(x + move_speed, y, objGround)) {
    x += move_speed;
}

if (keyboard_check(ord("I"))) {
    if (instance_place(x, y + 1, objGround)) {
        vspeed = jump_height;
        gravity = 0;
    }
}

// Face objPlayer1
if (instance_exists(objPlayer0)) {
    if (x < objPlayer0.x) {
        image_xscale = 1;  // Face right
    } else {
        image_xscale = -1; // Face left
    }
}
