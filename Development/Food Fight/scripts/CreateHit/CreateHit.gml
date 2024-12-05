// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function CreateHit(){
	var owner = argument0
	var dmg, xOffset, yOffset
	dmg = argument1
	xOffset = argument2
	yOffset = argument3
	var h = instance_create_layer(x + xOffset, y - yOffset, "Instances", objHit)
	
	h.owner = owner
	h.dmg = dmg
	h.x_offset = xOffset
	h.y_offset = yOffset
	
	return h
}