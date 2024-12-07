// Calculate center and layout variables
var width = room_width / 2;
var startY = 600; // Starting Y-position for the menu
var spacing = 32; // Vertical spacing between menu items

// Set font and alignment
draw_set_font(fontMain);
draw_set_halign(fa_center);

// Draw the menu options
for (var i = 0; i < array_length_1d(menu); i++) {
    // Highlight the current selection
    draw_set_color(i == currIndex ? c_red : c_white);
    draw_text(width, startY + spacing * i, menu[i]);
}

// Reset color and alignment
draw_set_color(c_white);
draw_text(width, startY + (1.5*spacing) * array_length_1d(menu), "R to Select");
draw_set_halign(fa_left);
