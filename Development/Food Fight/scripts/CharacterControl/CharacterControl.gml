function CharacterControl() {
    // Handle movement keys based on character direction
    var forwardKey = (sign(image_xscale) == 1) ? right : left;
    var backwardKey = (sign(image_xscale) != 1) ? right : left;

    switch (state) {
        case STATE_FREE: {
            canAttack = true;

            if (landed) {
                if (!crouch) {
                    hspd = WALK_SPD * (kc(right) - kc(left)); // Horizontal movement
                } else {
                    hspd = 0; // No movement while crouching
                }

                // Jumping
                if (kcp(up)) {
					audio_play_sound(JumpSound, 2, 0)
                    vspd = JUMP_FORCE;
                    landed = false;
                }

                // Crouching
                crouch = kc(down);
            } else {
                // Set appropriate sprite for jumping/falling
                if (vspd > 0) {
                    SetSprite(sprFall);
                } else {
                    SetSprite(sprJump);
                }
            }

            // Handle attacks
            if (kcp(atkL)) {
                SetAttack(ATK_LIGHT);
                break;
            } else if (kcp(atkM)) {
                SetAttack(ATK_MEDIUM);
                break;
            } else if (kcp(atkH)) {
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
