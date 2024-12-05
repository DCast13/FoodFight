if distance_to_point(targetXPos, targetYPos) < spd {
	x = targetXPos
	y = targetYPos
}
else {
	direction = point_direction(x, y, targetXPos, targetYPos)
	x += lengthdir_x(spd, direction)
	y += lengthdir_y(spd, direction)
}

//move camera
camera_set_view_border(view_camera[0], room_width / 2, room_height)
camera_set_view_target(view_camera[0], global.camera)