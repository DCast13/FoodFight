function scrControllerAssignment(){
    // Player 1 will use controller if one is connected, and if two are connected both will use them
    if(array_length(global.gamepads) >= 1){
		// Should only set controls if controller is connected
        if (controller == CONT_P1){
            controllerIndex = global.gamepads[0]
			right = gp_padr;
			left = gp_padl;
			up = gp_padu;
	        down = gp_padd;
	        atkL = gp_face3;
	        atkM = gp_face4;
	        atkH = gp_face2;
        } else if (controller != CONT_P1 && array_length(global.gamepads) >= 2){
            controllerIndex = global.gamepads[1]
			right = gp_padr;
	        left = gp_padl;
	        up = gp_padu;
	        down = gp_padd;
	        atkL = gp_face3;
	        atkM = gp_face4;
	        atkH = gp_face2;
        }
			//Original code if putting it in if statements doesnt work
			//right = gp_padr;
	        //left = gp_padl;
	        //up = gp_padu;
	        //down = gp_padd;
	        //atkL = gp_face3;
	        //atkM = gp_face4;
	        //atkH = gp_face2;
    } else {
        right = (controller == CONT_P1) ? ord("D") : vk_right
        left = (controller == CONT_P1) ? ord("A") : vk_left
        up = (controller == CONT_P1) ? ord("W") : vk_up
        down = (controller == CONT_P1) ? ord("S") : vk_down
        atkL = (controller == CONT_P1) ? ord("R") : ord("M")
        atkM = (controller == CONT_P1) ? ord("T") : ord("N")
        atkH = (controller == CONT_P1) ? ord("Y") : ord("B")
    }
}