navRight = kcp(ord("D"))
navLeft = kcp(ord("A"))
accept = kcp(ord("R"))
navRight2 = kcp(vk_right)
navLeft2 = kcp(vk_left)
accept2 = kcp(ord("M"))

if (array_length(global.gamepads) >= 1){
    navRight = gamepad_button_check_pressed(global.gamepads[0], gp_padr)
    navLeft = gamepad_button_check_pressed(global.gamepads[0], gp_padl)
    accept = gamepad_button_check_pressed(global.gamepads[0], gp_face1)
    if (array_length(global.gamepads) >= 2){
        navRight2 = gamepad_button_check_pressed(global.gamepads[1], gp_padr)
        navLeft2 = gamepad_button_check_pressed(global.gamepads[1], gp_padl)
        accept2 = gamepad_button_check_pressed(global.gamepads[1], gp_face1)
    }
}


if !p1Ready {
    if (navRight)
        p1Index++

    if (navLeft)
        p1Index--

    if (accept) {
        p1Ready = true
		audio_play_sound(SelectSound, 2, 0)
	}
        global.p1Char = p1Index

}

if !p2Ready {
    if (navRight2)
        p2Index++

    if (navLeft2)
        p2Index--

    if (accept2) {
        p2Ready = true
		audio_play_sound(SelectSound, 2, 0)
	}
        global.p2Char = p2Index
}

if p1Ready and p2Ready {
    if alarm[0] < 0
        alarm[0] = room_speed *2
}

p1Index = clamp(p1Index, 0, MAX_CHARS-1);
p2Index = clamp(p2Index, 0, MAX_CHARS-1);