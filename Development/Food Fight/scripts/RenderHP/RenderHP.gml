// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function RenderHP(){
	var xMargin = 40
	var yMargin = 20
	var sprHeight = sprite_get_height(sprHealthbar)
	var sprWidth = sprite_get_width(sprHealthbar)
	//var width = view_wport[0]
	var width = 1375
	
	//player 1 health
	draw_sprite_ext(sprHealthbar, 0, xMargin, yMargin, 2, 2, 0, c_red, 1)
	draw_sprite_part_ext(sprHealthbar, 1, 0, 0, sprWidth * (p1.hp / MAX_HP), sprHeight, xMargin, yMargin, 2, 2, c_black, 1)
	
	//player 2 health
	draw_sprite_ext(sprHealthbar, 0, width - xMargin, yMargin, -2, 2, 0, c_blue, 1)
	draw_sprite_part_ext(sprHealthbar, 1, 0, 0, sprWidth * (p2.hp / MAX_HP), sprHeight, width - xMargin, yMargin, -2, 2, c_black, 1)
}