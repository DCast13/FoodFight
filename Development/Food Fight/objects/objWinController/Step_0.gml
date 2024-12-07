accept = (array_length(global.gamepads) >= 1) ? gamepad_button_check_pressed(global.gamepads[0], gp_face1) : kcp(ord("R"))

if (accept) room_goto(rmMainMenu)