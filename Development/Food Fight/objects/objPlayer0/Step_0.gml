// Assigns controls based on controller
if(gamepad_is_connected(controllerIndex)){
	keyRight = gamepad_button_check(controllerIndex, gpRight);
	keyLeft = gamepad_button_check(controllerIndex, gpLeft);
	keyUp = gamepad_button_check(controllerIndex, gpUp);
	keyDown = gamepad_button_check(controllerIndex, gpDown);
	lightAttack = gamepad_button_check_pressed(controllerIndex, gpLight);
	medAttack = gamepad_button_check_pressed(controllerIndex, gpMed);
	heavyAttack = gamepad_button_check_pressed(controllerIndex, gpHeavy);

}else{
	keyRight = keyboard_check(kbRight);
	keyLeft = keyboard_check(kbLeft);
	keyUp = keyboard_check(kbUp);
	keyDown = keyboard_check(kbDown);
	lightAttack = keyboard_check(kbLight);
	medAttack = keyboard_check(kbMed);
	heavyAttack = keyboard_check(kbHeavy);
}

if(health <= 0){
	instance_destroy();
	instance_destroy(objPlayer1);
	instance_create_layer(x, y, "Instances", objWinner);
	objWinner.sprite_index = sprP1Win;
}

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
moving = keyLeft || keyRight;
attacking = lightAttack || medAttack || heavyAttack
// Horizontal movement
if (moving) {
    // Set walking sprite
    sprite_index = sprPizzaWalk;

    // Move left
    if (keyLeft == 1 && !instance_place(x - move_speed, y, objGround)) {
        x -= move_speed;
    }
    // Move right
    if (keyRight == 1 && !instance_place(x + move_speed, y, objGround)) {
        x += move_speed;
    }
} else {
    // Reset to idle sprite
    sprite_index = sprPizzaIdle;
}

// Jump
if (keyUp == 1 && instance_place(x, y + 1, objGround)) {
    vspeed = jump_height;
    gravity = 0;
	sprite_index = sprPizzaJump;
    image_speed = 0.2; // Slower animation speed for jumping
}


// Face objPlayer1
if (instance_exists(objPlayer1)) {
    image_xscale = (x < objPlayer1.x) ? 1 : -1;
	
}


if (attacking){
		if(lightAttack == 1){
			alarm[0] = 2;
			sprite_index = sprGrdLight;
			attacking = false;
		}
}