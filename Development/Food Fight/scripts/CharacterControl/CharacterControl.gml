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
	break
}

if landed {
	image_xscale = (opponent.x > x) ? 1 : -1
}