switch (argument0) {
	case CHAR_PIZZA:
		sprIdle = sprPizzaIdle
		sprForward = sprPizzaWalk
		sprBackward = sprPizzaWalk
		sprFall = sprPizzaFall
		sprJump = sprPizzaJump
		sprCrouch = sprPizzaCrouch
		
		sprAtk = [sprPizzaLAtk, sprPizzaMAtk, sprPizzaHAtk]
		sprAtkAir = [sprPizzaLAtkAir, sprPizzaMAtkAir, sprPizzaHAtkAir]
		sprAtkCrch = [sprPizzaLAtkCrch, sprPizzaMAtkCrch, sprPizzaHAtkCrch]
	break
	
	case CHAR_BURGER:
		sprIdle = sprBurgerIdle
		sprForward = sprBurgerWalk
		sprBackward = sprBurgerWalk
		sprFall = sprBurgerFall
		sprJump = sprBurgerJump
		sprCrouch = sprBurgerCrouch
		
		sprAtk = [sprBurgerLAtk, sprBurgerMAtk, sprBurgerHAtk]
		sprAtkAir = [sprBurgerLAtkAir, sprBurgerMAtkAir, sprBurgerHAtkAir]
		sprAtkCrch = [sprBurgerLAtkCrch, sprBurgerMAtkCrch, sprBurgerHAtkCrch]
	break
	
	case CHAR_TACO:
		sprIdle = sprTacoIdle
		sprForward = sprTacoWalk
		sprBackward = sprTacoWalk
		sprFall = sprTacoFall
		sprJump = sprTacoJump
		sprCrouch = sprTacoCrouch
		
		sprAtk = [sprTacoLAtk, sprTacoMAtk, sprTacoHAtk]
		sprAtkAir = [sprTacoLAtkAir, sprTacoMAtkAir, sprTacoHAtkAir]
		sprAtkCrch = [sprTacoLAtkCrch, sprTacoMAtkCrch, sprTacoHAtkCrch]
	break
	/*
	case CHAR_RAMEN:
		sprIdle = sprRamenIdle
		sprForward = sprRamenWalk
		sprBackward = sprRamenWalk
		sprFall = sprRamenFall
		sprJump = sprRamenJump
		sprCrouch = sprRamenCrouch
		
		sprAtk = [sprRamenLAtk, sprRamenMAtk, sprRamenHAtk]
		sprAtkAir = [sprRamenLAtkAir, sprRamenMAtkAir, sprRamenHAtkAir]
		sprAtkCrch = [sprRamenLAtkCrch, sprRamenMAtkCrch, sprRamenHAtkCrch]
	break
	*/
}

sprite_index = sprIdle