function CollisionAndMovement(){
	//gravity
	vspd += grv

	//horizontal collision
	if place_meeting(x + hspd, y, objGround) {
		while !place_meeting(x + sign(hspd), y, objGround) {
			x += sign(hspd)
		}
		hspd = 0
	}

	//vertical collision
	landed = place_meeting(x, y + vspd, objGround)
	if landed {
		while !place_meeting(x, y + sign(vspd), objGround) {
			y += sign(vspd)
		}
		vspd = 0
	}

	x += hspd
	y += vspd
	if distance_to_object(opponent) > room_width / 2 - 100 {
		x -= hspd
	}
}