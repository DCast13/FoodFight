if kcp(ord("W")) {
	currIndex-- ;
}

if kcp(ord("S")) {
	currIndex++ ;
}

currIndex = clamp(currIndex, 0, array_length_1d(menu));

if kcp(ord("R")) {
	switch (currIndex) {
		case 0: //PvP
			room_goto_next();
		break;
			
		case 1: //Training
			//global.enemyType = CONT_TRAIN
			room_goto_next();
		break;
		
		case 3: //Exit
			game_end();
		break;
		
		default:
			room_goto_next();
		break;
	}
}