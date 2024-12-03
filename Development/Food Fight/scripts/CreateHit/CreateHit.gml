// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function CreateHit(){
	var owner = argument0
	var effect, dmg, xOffset, yOffset
	effect = argument1
	dmg = argument2
	xOffset = argument3
	yOffset = argument4
	var h = instance_create_layer(x + xOffset, y + yOffset, "Instances", objHit)
	
	h.owner = owner
	h.effect = effect
	h.dmg = dmg
	h.x_offset = xOffset
	h.y_offset = yOffset
}