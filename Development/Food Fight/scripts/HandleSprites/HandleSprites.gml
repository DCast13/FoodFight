function HandleSprites() {
    switch (argument0) {
        case CHAR_PIZZA:
            sprIdle = sprPizzaIdle;
            sprForward = sprPizzaWalk;
            sprBackward = sprPizzaWalk;
            sprFall = sprPizzaAirFall;
            sprJump = sprPizzaAirJump;
            sprCrouch = sprPizzaCrouch;

            sprAtk = [sprPizzaGrLight, sprPizzaGrMed, sprPizzaGrHeavy];
            sprAtkAir = [sprPizzaAirLight, sprPizzaAirMed, sprPizzaAirHeavy];
            sprAtkCrch = [sprPizzaCrLight, sprPizzaCrMed, sprPizzaCrHeavy];
            break;

        // Uncomment and implement when needed
        /*
        case CHAR_BURGER:
            sprIdle = sprBurgerIdle;
            sprForward = sprBurgerWalk;
            sprBackward = sprBurgerWalk;
            sprFall = sprBurgerAirFall;
            sprJump = sprBurgerAirJump;
            sprCrouch = sprBurgerCrouch;

            sprAtk = [sprBurgerGrLight, sprBurgerGrMed, sprBurgerGrHeavy];
            sprAtkAir = [sprBurgerAirLight, sprBurgerAirMed, sprBurgerAirHeavy];
            sprAtkCrch = [sprBurgerCrLight, sprBurgerCrMed, sprBurgerCrHeavy];
            break;
        */

        case CHAR_TACO:
            sprIdle = sprTacoIdle;
            sprForward = sprTacoWalk;
            sprBackward = sprTacoWalk;
            sprFall = sprTacoAirFall;
            sprJump = sprTacoAirJump;
            sprCrouch = sprTacoCrouch;

            sprAtk = [sprTacoGrLight, sprTacoGrMed, sprTacoGrHeavy];
            sprAtkAir = [sprTacoAirLight, sprTacoAirMed, sprTacoAirHeavy];
            sprAtkCrch = [sprTacoCrLight, sprTacoCrMed, sprTacoCrHeavy];
            break;

        // Uncomment and implement when needed
        /*
        case CHAR_RAMEN:
            sprIdle = sprRamenIdle;
            sprForward = sprRamenWalk;
            sprBackward = sprRamenWalk;
            sprFall = sprRamenAirFall;
            sprJump = sprRamenAirJump;
            sprCrouch = sprRamenCrouch;

            sprAtk = [sprRamenGrLight, sprRamenGrMed, sprRamenHAtk];
            sprAtkAir = [sprRamenAirLight, sprRamenAirMed, sprRamenAirHeavy];
            sprAtkCrch = [sprRamenCrLight, sprRamenCrMed, sprRamenCrHeavy];
            break;
        */
		
		default:
            sprIdle = sprTacoIdle;
            sprForward = sprTacoWalk;
            sprBackward = sprTacoWalk;
            sprFall = sprTacoAirFall;
            sprJump = sprTacoAirJump;
            sprCrouch = sprTacoCrouch;

            sprAtk = [sprTacoGrLight, sprTacoGrMed, sprTacoGrHeavy];
            sprAtkAir = [sprTacoAirLight, sprTacoAirMed, sprTacoAirHeavy];
            sprAtkCrch = [sprTacoCrLight, sprTacoCrMed, sprTacoCrHeavy];
            break;
    }

    sprite_index = sprIdle;
}
