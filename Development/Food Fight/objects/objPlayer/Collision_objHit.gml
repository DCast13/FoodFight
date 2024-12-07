var backwardKey = (sign(image_xscale) != 1) ? right : left

#region exit
if other.owner == self {
	exit
}
if last_hit_id == other._id {
	exit
}
#endregion

//block
if kc(backwardKey) and landed and state = STATE_FREE {
	if other.low {
		if crouch {
			state = STATE_BLOCK
		}
	}
	else {
		state = STATE_BLOCK
	}
}

if state == STATE_BLOCK {
	exit
}

//take damage
last_hit_id = other._id

//damage the player
hp -= other.dmg

if landed {
	state = STATE_HURT
	image_index = 0
}

//if !landed {
//	vspd = JUMP_FORCE
//	hspd = -WALK_SPD * sign(image_xscale)
//}

with other {
	instance_destroy()
}