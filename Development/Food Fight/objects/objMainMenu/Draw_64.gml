var width = room_width/2;

draw_set_font(fontMain)
draw_set_halign(fa_center)

for(var i = 0; i < array_length_1d(menu); i++) {
	draw_set_color(i==currIndex?c_red:c_white);
	draw_text(width, 260+32*i, menu[i]);
}
draw_set_color(c_white)
draw_set_halign(fa_left)