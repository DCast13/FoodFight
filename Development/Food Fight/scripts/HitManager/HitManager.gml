// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function HitManager(){
	switch (state) {
		case STATE_ATTACK:
			if landed {
				if crouch {
					var ind = atkCrchIndex[atkType]
					for (var i = 0; i < array_length(ind); i++) {
						if round(image_index) == ind[i] {
							CreateHit(self, noone, 4, 50 * sign(x_scale), 20)
						}
					}
				}
				else {
					var ind = atkIndex[atkType]
					for (var i = 0; i < array_length(ind); i++) {
						if round(image_index) == ind[i] {
							CreateHit(self, noone, 4, 50 * sign(x_scale), 50)
						}
					}
				}
			}
			else {
				var ind = atkAirIndex[atkType]
				for (var i = 0; i < array_length(ind); i++) {
					if round(image_index) == ind[i] {
						CreateHit(self, noone, 4, 50 * sign(x_scale), 70)
					}
				}
			}
		break
	}
}