function CreateHit(argument0, argument1, argument2, argument3){
	var owner = argument0
	var dmg, x_offset, y_offset
	dmg = argument1
	x_offset = argument2
	y_offset = argument3
	var h = instance_create_layer(x + x_offset, y - y_offset, "Instances", objHit)
	
	h.owner = owner
	h.dmg = dmg
	h.x_offset = x_offset
	h.y_offset = y_offset
	
	return h
}