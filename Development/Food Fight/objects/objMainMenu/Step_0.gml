navUp = kcp(ord("W"))
navDown = kcp(ord("S"))
accept = kcp(ord("R"))

if (array_length(global.gamepads) >= 1){
    navUp = gamepad_button_check_pressed(global.gamepads[0], gp_padu)
    navDown = gamepad_button_check_pressed(global.gamepads[0], gp_padd)
    accept = gamepad_button_check_pressed(global.gamepads[0], gp_face1)

}

if  navUp {
    currIndex-- ;
}

if   navDown  {
    currIndex++ ;
}

currIndex = clamp(currIndex, 0, array_length_1d(menu));

if accept{
	audio_play_sound(SelectSound, 2, 0)
    switch (currIndex) {
        case 0: // PvP
            room_goto(rmCharSelect); // Redirect to character selection
        break;
        
        case 1: // Controls
            room_goto(rmControls); // Redirect to controls screen
        break;
        
        case 2: // Exit
            game_end(); // End the game
        break;
    }
}
