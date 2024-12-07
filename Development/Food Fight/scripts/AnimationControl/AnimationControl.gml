function AnimationControl() {
	// Main animation control logic
	switch (state) {
	    case STATE_FREE:
	        if (landed) {
	            if (!crouch) {
	                if (hspd == 0) {
	                    SetSprite(sprIdle);
	                }
	                else {
	                    sprite_index = (sign(hspd) == sign(image_xscale)) ? sprForward : sprBackward;
	                }
	            }
	            else { // Duck animation
	                if (!SetSprite(sprCrouch)) {
	                    FreezeLastFrame();
	                }
	            }
	        }
	        else { // Airborne
	            if (vspd > 0) {
	                SetSprite(sprFall);
	            }
	            else {
	                SetSprite(sprJump);
	            }
	        }
	    break;
    
	    case STATE_ATTACK:
	        if (!canAttack) {
	            exit;
	        }
        
	        if (landed) {
	            if (crouch) {
	                SetSprite(sprAtkCrch[atkType]);
	            }
	            else {
	                SetSprite(sprAtk[atkType]);
	            }
	        }
	        else {
	            SetSprite(sprAtkAir[atkType]);
	        }
	        canAttack = false;
	    break;
		
		case STATE_HURT:
			if landed {
				SetSprite(crouch?sprHurtCrch:sprHurt)
			}
		break
		
		case STATE_BLOCK:
			if landed {
				SetSprite(crouch?sprBlockCrch:sprBlock)
			}
			state = STATE_FREE
		break
	}
}
