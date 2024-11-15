switch (state) {
	case STATE_FREE:
		if landed {
			if !crouch {
				if (hspd == 0) {
					SetSprite(sprIdle)
				}
				else {
					sprite_index = (sign(hspd) ==  sign(image_xscale)) ? sprForward : sprBackward
				}
			}
			else { //duck animation
				if !SetSprite(sprCrouch) {
					FreezeLastFrame()
				}
			}
		}
		else { // airborne
			if vspd > 0 {
				SetSprite(sprFall)
			}
			else {
				SetSprite(sprJump)
			}
		}
	break
	
	case STATE_ATTACK:
		if (!canAttack) {
			exit
		}
		
		if (landed) {
			if (crouch) {
				SetSprite(sprAtkCrch[atkType])
			}
			else {
				SetSprite(sprAtk[atkType])
			}
		}
		else {
			SetSprite(sprAtkAir[atkType])
		}
		canAttack = false
	break
}