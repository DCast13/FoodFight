if (array_length(global.gamepads) >= 1){
	var backwardKey = (sign(image_xscale) != 1) ? gamepad_button_check(controllerIndex, right) : gamepad_button_check(controllerIndex, left)
} else
	var backwardKey = (sign(image_xscale) != 1) ? kc(right) : kc(left)

#region exit
if other.owner == self {
	exit
}
if last_hit_id == other._id {
	exit
}
#endregion

//block
if backwardKey and landed and state == STATE_FREE {
	if other.low {
		if crouch {
			state = STATE_BLOCK
			audio_play_sound(BlockSound, 2, 0)
		}
	}
	else {
		state = STATE_BLOCK
			audio_play_sound(BlockSound, 2, 0)
	}
}

if state == STATE_BLOCK {
	exit
}

//take damage
last_hit_id = other._id

//damage the player
hp -= other.dmg

audio_play_sound(HitSound, 2, 0)
if landed {
	state = STATE_HURT
	image_index = 0
}

with other {
	instance_destroy()
}