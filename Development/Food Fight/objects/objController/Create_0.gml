/// @description Insert description here
// You can write your code in this editor
window_set_fullscreen(true)
gamepads = [];

// p2.image_xscale = -1
p2.controller = CONT_P2

//set opponents
p1.opponent = p2
p2.opponent = p1

//set sprites
p1.character = CHAR_PIZZA
p2.character = CHAR_BURGER

//update sprites
with p1 {
	HandleSprites(character)
}
with p2 {
	HandleSprites(character)
}