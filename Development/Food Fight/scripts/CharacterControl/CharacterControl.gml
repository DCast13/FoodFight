function CharacterControl(){
	switch (state) {
		case STATE_FREE:
			canAttack = true
		
			if landed {
				if !crouch {
					hspd = WALK_SPD * (kc(right) - kc(left))
				}
				else {
					hspd = 0
				}
			
				//jump
				if kcp(up) {
					vspd = JUMP_FORCE
					landed = false
				}
			
				//crouching
				crouch = kc(down)
			}
			else {
			
			}
			//attacks
			if (kcp(atkL)) {
				SetAttack(ATK_LIGHT)
				break
			}
			else if (kcp(atkM)) {
				SetAttack(ATK_MEDIUM)
				break
			}
			else if (kcp(atkH)) {
				SetAttack(ATK_HEAVY)
				break
			}
		break
	
		case STATE_ATTACK:
			if landed {
				hspd = 0
			}
			if AnimationEnd() {
				if crouch {
					sprite_index = sprCrouch
					image_index = image_number - 1
				}
				RandomizeBaseId()
				state = STATE_FREE
			}
		break
		
		case STATE_HURT:
			if landed {
				if AnimationEnd() {
					if crouch {
						sprite_index = sprCrouch
						image_index = image_number - 1
					}
					state = STATE_FREE
					break
				}
			}
		break
	}

	if (landed) {
		image_xscale = (opponent.x > x) ? 1 : -1
	}
}