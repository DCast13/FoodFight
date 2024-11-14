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

if (instance_place(x, y + 1, objGround)) {
    gravity = 0;
    vspeed = 0;
	
	if (moving) {
	    sprite_index = sprTacoWalking;
	} else {
	    sprite_index = sprTacoIdle;
	}
	image_speed = 1;
} else {
    gravity = 1.2;
}
attacking = lightAttack || medAttack || heavyAttack;
moving = keyLeft || keyRight;


// left movement
if (keyLeft == 1 && !instance_place(x - move_speed, y, objGround)) {
    x -= move_speed;
}

if (keyRight == 1 && !instance_place(x + move_speed, y, objGround)) {
    x += move_speed;
}

if (keyUp == 1) {
    if (instance_place(x, y + 1, objGround)) {
        vspeed = jump_height;
        gravity = 0;
    }
}

if(health <= 0){
	instance_destroy();
	instance_destroy(objPlayer0);
	instance_create_layer(x, y, "Instances", objWinner);
	objWinner.sprite_index = sprP2Win;
}

// Face objPlayer0
if (instance_exists(objPlayer0)) {
    if (x < objPlayer0.x) {
        image_xscale = 1;  // Face right
    } else {
        image_xscale = -1; // Face left
    }
}
if (attacking){
		if(lightAttack == 1){
			alarm[0] = 2;
			sprite_index = sprTacoLightAttack;
			attacking = false;
		}
}
