#region exit
if other.owner = self {
	exit
}
if last_hit_id == other._id {
	exit
}
#endregion

//take damage
last_hit_id = other._id

//damage the player
hp -= other.dmg

if landed {
	state = STATE_HURT
	image_index = 0
}
/*
if !landed {
	vspd = JUMP_FORCE
	hspd = -25 * sign(image_xscale)
}
*/
with other {
	instance_destroy()
}