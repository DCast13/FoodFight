function CharacterControl() {
    // Handle movement keys based on character direction
    scrControllerAssignment()
    var forwardKey = (sign(image_xscale) == 1) ? right : left;
    var backwardKey = (sign(image_xscale) != 1) ? right : left;
    if (array_length(global.gamepads) >= 1){
        var horizMove = gamepad_button_check(controllerIndex,right) - gamepad_button_check(controllerIndex,left) 
        var crouching = gamepad_button_check(controllerIndex, down)
        var jumping = gamepad_button_check_pressed(controllerIndex, up)
        var lightAtk =  gamepad_button_check_pressed(controllerIndex, atkL)
        var medAtk = gamepad_button_check_pressed(controllerIndex, atkM)
        var heavyAtk = gamepad_button_check_pressed(controllerIndex, atkH)
    } else{
        var horizMove = kc(right) - kc(left);
        var crouching = kc(down)
        var jumping = kc(up)
        var lightAtk = kc(atkL)
        var medAtk = kc(atkM)
        var heavyAtk = kc(atkH)
    }
	
    switch (state) {
        case STATE_FREE: {
            canAttack = true;

            if (landed) {
                if (!crouch) {
                    hspd = WALK_SPD * (horizMove); // Horizontal movement
                } else {
                    hspd = 0; // No movement while crouching
                }

                // Jumping
                if (jumping) {
					audio_play_sound(JumpSound, 2, 0)
                    vspd = JUMP_FORCE;
                    landed = false;
                }

                // Crouching
                crouch = crouching;
            } else {
                // Set appropriate sprite for jumping/falling
                if (vspd > 0) {
                    SetSprite(sprFall);
                } else {
                    SetSprite(sprJump);
                }
            }

            // Handle attacks
            if (lightAtk) {
                SetAttack(ATK_LIGHT);
                break;
            } else if (medAtk) {
                SetAttack(ATK_MEDIUM);
                break;
            } else if (heavyAtk) {
                SetAttack(ATK_HEAVY);
                break;
            }
            break;
        }

        case STATE_ATTACK: {
            if (landed) {
                hspd = 0; // Stop horizontal movement during attacks
            }

            if (AnimationEnd()) {
                // Return to crouch if needed
                if (crouch) {
                    sprite_index = sprCrouch;
                    image_index = image_number - 1;
                }
                RandomizeBaseId(); // Reset hit ID
                state = STATE_FREE;
                break;
            }
            break;
        }

        case STATE_HURT: {
            if (landed && AnimationEnd()) {
                if (crouch) {
                    sprite_index = sprCrouch;
                    image_index = image_number - 1;
                }
                state = STATE_FREE;
                break;
            }
            break;
        }

        case STATE_BLOCK: {
            if (landed) {
                hspd = 0; // No movement while blocking
            }

            if (AnimationEnd()) {
                if (crouch) {
                    sprite_index = sprCrouch;
                    image_index = image_number - 1;
                }
                state = STATE_FREE;
                break;
            }
            break;
        }
    }

    // Face opponent when landed
    if (landed) {
        image_xscale = (opponent.x > x) ? 1 : -1;
    }
}
