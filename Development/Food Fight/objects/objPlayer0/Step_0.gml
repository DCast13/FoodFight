//Set gravity
if (instance_place(x, y + 1, objGround)) {
    gravity = 0;
    vspeed = 0;
} else {
    gravity = 1.2;
}

//Set moving to true or false
if (keyboard_check(ord("A")) || keyboard_check(ord("D"))) {
	moving = true;
} else {
	moving = false;
}

//Horizontal movement
if (moving) {
	//Set walking sprite
	sprite_index = sprPizzaWalk
	//Move left
	if (keyboard_check(ord("A")) && !instance_place(x - move_speed, y, objGround)) {
    x += -move_speed;
	}
	//Move right
	if (keyboard_check(ord("D")) && !instance_place(x + move_speed, y, objGround)) {
	    x += move_speed;
	}
} else {
	//Reset to idle sprite
	sprite_index = sprPizzaIdle
}

//Jump
if (keyboard_check(ord("W"))) {
    if (instance_place(x, y + 1, objGround)) {
        vspeed = jump_height;
        gravity = 0;
    }
}

// Face objPlayer1
if (instance_exists(objPlayer1)) {
    if (x < objPlayer1.x) {
        image_xscale = 1;  // Face right
    } else {
        image_xscale = -1; // Face left
    }
}
