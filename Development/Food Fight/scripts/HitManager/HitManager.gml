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
							var h = CreateHit(self, 4, 75 * sign(image_xscale), -15)
							h._id = hit_base_id * round(image_index)
							h.low = true
						}
					}
				}
				else {
					var ind = atkIndex[atkType]
					for (var i = 0; i < array_length(ind); i++) {
						if round(image_index) == ind[i] {
							var h = CreateHit(self, 4, 75 * sign(image_xscale), 0)
							h._id = hit_base_id * round(image_index)
						}
					}
				}
			}
			else {
				var ind = atkAirIndex[atkType]
				for (var i = 0; i < array_length(ind); i++) {
					if round(image_index) == ind[i] {
						var h = CreateHit(self, 4, 90 * sign(image_xscale), -25)
						h._id = hit_base_id * round(image_index)
					}
				}
			}
		break
	}
}