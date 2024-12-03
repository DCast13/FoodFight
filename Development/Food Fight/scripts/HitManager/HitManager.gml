// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function HitManager(){
	switch (state) {
		case STATE_ATTACK:
			if landed {
				if crouch {
					var index = atkCrchIndex[atkType]
					for (var i = 0; i < array_length(index); i++) {
						if round(image_index) == index[i] {
							var h = instance_create_layer(x, y, "Instances", objHit)
						}
					}
				}
				else {
					var index = atkIndex[atkType]
					for (var i = 0; i < array_length(index); i++) {
						if round(image_index) == index[i] {
							var h = instance_create_layer(x, y, "Instances", objHit)
						}
					}
				}
			}
			else {
				var index = atkAirIndex[atkType]
				for (var i = 0; i < array_length(index); i++) {
					if round(image_index) == index[i] {
						var h = instance_create_layer(x, y, "Instances", objHit)
					}
				}
			}
		break
	}
}