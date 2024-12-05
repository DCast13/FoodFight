function HandleSprites(argument0) {
    switch (argument0) {
        case CHAR_PIZZA:
            sprIdle = sprPizzaIdle;
            sprForward = sprPizzaWalk;
            sprBackward = sprPizzaWalk;
            sprFall = sprPizzaAirFall;
            sprJump = sprPizzaAirJump;
            sprCrouch = sprPizzaCrouch;
			
			
			sprHurt = sprPizzaHitStun
			sprHurtH = sprPizzaHitStun
			sprHurtCrch = sprPizzaHitStun
			

            sprAtk = [sprPizzaGrLight, sprPizzaGrMed, sprPizzaGrHeavy];
			atkIndex = [4, 3, 3]
            sprAtkAir = [sprPizzaAirLight, sprPizzaAirMed, sprPizzaAirHeavy];
			atkAirIndex = [3, 2, 4]
            sprAtkCrch = [sprPizzaCrLight, sprPizzaCrMed, sprPizzaCrHeavy];
			atkCrchIndex = [4, 4, 6]
            break;

        case CHAR_BURGER:
            sprIdle = sprBurgerIdle;
            sprForward = sprBurgerWalk;
            sprBackward = sprBurgerWalk;
            sprFall = sprBurgerAirFall;
            sprJump = sprBurgerAirJump;
            sprCrouch = sprBurgerCrouch;
			
			
			sprHurt = sprBurgerHitStun
			sprHurtH = sprBurgerHitStun
			sprHurtCrch = sprBurgerHitStun
			

            sprAtk = [sprBurgerGrLight, sprBurgerGrMed, sprBurgerGrHeavy];
			atkIndex = [2, 3, 6]
            sprAtkAir = [sprBurgerAirLight, sprBurgerAirMed, sprBurgerAirHeavy];
			atkAirIndex = [2, 3, 7]
            sprAtkCrch = [sprBurgerCrLight, sprBurgerCrMed, sprBurgerCrHeavy];
			atkCrchIndex = [1, 3, 5]
            break;

        case CHAR_TACO:
            sprIdle = sprTacoIdle;
            sprForward = sprTacoWalk;
            sprBackward = sprTacoWalk;
            sprFall = sprTacoAirFall;
            sprJump = sprTacoAirJump;
            sprCrouch = sprTacoCrouch;
			
			
			sprHurt = sprTacoHitStun
			sprHurtH = sprTacoHitStun
			sprHurtCrch = sprTacoHitStun
			

            sprAtk = [sprTacoGrLight, sprTacoGrMed, sprTacoGrHeavy];
			atkIndex = [3, 3, 5]
            sprAtkAir = [sprTacoAirLight, sprTacoAirMed, sprTacoAirHeavy];
			atkAirIndex = [3, 3, 4]
            sprAtkCrch = [sprTacoCrLight, sprTacoCrMed, sprTacoCrHeavy];
			atkCrchIndex = [3, 3, 11]
            break;

        case CHAR_RAMEN:
            sprIdle = sprRamenIdle;
            sprForward = sprRamenWalk;
            sprBackward = sprRamenWalk;
            sprFall = sprTacoAirFall;
            sprJump = sprTacoAirJump;
            sprCrouch = sprRamenCrouch;
			
			sprHurt = sprRamenHitStun
			sprHurtH = sprRamenHitStun
			sprHurtC = sprRamenHitStun

            sprAtk = [sprRamenGrLight, sprRamenGrMed, sprRamenGrHeavy];
			atkIndex = [3, 4, 7]
            sprAtkAir = [sprTacoAirLight, sprTacoAirMed, sprTacoAirHeavy];
			atkAirIndex = [1, 1, 1]
            sprAtkCrch = [sprRamenCrLight, sprRamenCrMed, sprRamenCrHeavy];
			atkCrchIndex = [4, 4, 5]
            break;
		
		default:
            sprIdle = sprTacoIdle;
            sprForward = sprTacoWalk;
            sprBackward = sprTacoWalk;
            sprFall = sprTacoAirFall;
            sprJump = sprTacoAirJump;
            sprCrouch = sprTacoCrouch;
			
			sprHurt = sprTacoHitStun
			sprHurtH = sprTacoHitStun
			sprHurtCrch = sprTacoHitStun

            sprAtk = [sprTacoGrLight, sprTacoGrMed, sprTacoGrHeavy];
			atkIndex = [3, 3, 5]
            sprAtkAir = [sprTacoAirLight, sprTacoAirMed, sprTacoAirHeavy];
			atkAirIndex = [3, 3, 4]
            sprAtkCrch = [sprTacoCrLight, sprTacoCrMed, sprTacoCrHeavy];
			atkCrchIndex = [3, 3, 11]
            break;
    }

    sprite_index = sprIdle;
}
