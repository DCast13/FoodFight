// Check if on the ground
if (instance_place(x, y + 1, objGround)) {
    gravity = 0;
    vspeed = 0;
    
    // Reset to idle or walking sprite when grounded
    if (moving) {
        sprite_index = sprPizzaWalk;
    } else {
        sprite_index = sprPizzaIdle;
    }
    
    // Reset animation speed to normal when grounded
    image_speed = 1;
} else {
    gravity = 1.2;

    // If airborne and using the jump sprite, freeze on the last frame
    if (sprite_index == sprPizzaJump && image_index >= image_number - 1) {
        image_speed = 0;
    }
}

// Set movement state
moving = keyboard_check(ord("A")) || keyboard_check(ord("D"));

// Horizontal movement
if (moving) {
    // Set walking sprite
    sprite_index = sprPizzaWalk;

    // Move left
    if (keyboard_check(ord("A")) && !instance_place(x - move_speed, y, objGround)) {
        x -= move_speed;
    }
    // Move right
    if (keyboard_check(ord("D")) && !instance_place(x + move_speed, y, objGround)) {
        x += move_speed;
    }
} else {
    // Reset to idle sprite
    sprite_index = sprPizzaIdle;
}

// Jump
if (keyboard_check(ord("W")) && instance_place(x, y + 1, objGround)) {
    vspeed = jump_height;
    gravity = 0;
    sprite_index = sprPizzaJump;
    image_speed = 0.2; // Slower animation speed for jumping
}

// Face objPlayer1
if (instance_exists(objPlayer1)) {
    image_xscale = (x < objPlayer1.x) ? 1 : -1;
}
