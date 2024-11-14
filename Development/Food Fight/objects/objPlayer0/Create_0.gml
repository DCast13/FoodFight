controllerIndex = -1
gravity_direction = 270;
player1 = p1;
player2 = p2;
gpUp = gp_padu;
gpDown = gp_padd;
gpLeft = gp_padl;
gpRight = gp_padr;
gpLight = gp_face3; // Square on ps and X on xbox
gpMed = gp_face4; // Triangle on ps and y on xbox
gpHeavy = gp_face2; // Circle on ps and b xbox

if (player1 == true){
	kbUp = ord("W");
	kbDown = ord("S");
	kbLeft = ord("A");
	kbRight = ord("D");
	kbLight = ord("R");
	kbMed = ord("T");
	kbHeavy = ord("Y");
	
}else if (player2 == true){
	kbUp = vk_up;
	kbDown = vk_down;
	kbLeft = vk_left;
	kbRight = vk_right;
	kbLight = ord("M");
	kbMed = ord(",");
	kbHeavy = ord(".");
	
}


health = 100;
