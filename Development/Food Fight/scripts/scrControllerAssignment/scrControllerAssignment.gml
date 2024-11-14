function scrControllerAssignment(argument0){
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
}