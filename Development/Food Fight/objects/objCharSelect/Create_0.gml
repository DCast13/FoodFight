randomize(); // Ensure randomness
window_set_fullscreen(true);

names = ["Pizza", "Burger", "Taco", "Ramen"];
icons = [sprIconPizza, sprIconBurger, sprIconTaco, sprIconRamen];
ports = [sprPortPizza, sprPortBurger, sprPortTaco, sprPortRamen];

// Define an array with the specific rooms
rooms = [rmStage1, rmStage2, rmStage3];

p1Index = 0;
p2Index = 0;

p1Ready = false;
p2Ready = false;

global.p1Char = CHAR_PIZZA;
global.p2Char = CHAR_TACO;
