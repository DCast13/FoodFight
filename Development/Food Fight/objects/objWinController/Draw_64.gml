// Calculate center and layout variables
var width = room_width / 2;
var startY = 600; // Starting Y-position for the menu
var spacing = 32; // Vertical spacing between menu items

// Set font and alignment
draw_set_font(fontMain);
draw_set_halign(fa_center);
draw_set_color(c_white);
draw_text(width, startY + (1.5*spacing) * 3, "R for keyboard or X for controller to return to menu");
draw_set_halign(fa_left);
