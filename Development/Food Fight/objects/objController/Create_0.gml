/// @description Spawn Players
// You can write your code in this editor
window_set_fullscreen(true)
gamepads = [];

p1 = instance_create_layer(room_width/2-100, 220, "Instances", objPlayer)
p2 = instance_create_layer(room_width/2+100, 220, "Instances", objPlayer)

// p2.image_xscale = -1
p2.controller = global.enemyType

//set opponents
p1.opponent = p2
p2.opponent = p1

//set sprites
p1.character = global.p1Char
p2.character = global.p2Char

//update sprites
with p1 {
	HandleSprites(character)
}
with p2 {
	HandleSprites(character)
}


//camera creation
cam = instance_create_layer(room_width / 2, room_height / 2, "Instances", objCamera)

/*var stages = [sprKitchenStage, sprPicnicStage, sprSaladBarStage]

var randomStageBg = stages[irandom(array_length(stages) - 1)]

var bgLayer = layer_get_id("background")

var bgElement = layer_sprite_get_id(bgLayer, randomStageBg)

layer_sprite_index(bgElement, randomStageBg)



