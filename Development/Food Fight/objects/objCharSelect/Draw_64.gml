var width = room_width/2;
draw_set_font(fontMain)
draw_set_halign(fa_center)
draw_set_color(c_green)
draw_set_halign(fa_left)

for (var i = 0; i < MAX_CHARS; i++) {
	draw_sprite(icons[i], 0, 64+64*i, 150);
	
	if i == p1Index {
		draw_set_color(c_red)
		draw_text(64+64*i, 120, "P1");
		draw_set_color(c_white)
	}
	
	if i == p2Index {
		draw_set_color(c_blue)
		draw_text(64+64*i, 120, "P2");
		draw_set_color(c_white)
	}
}

//draw character portraits
draw_sprite(ports[p1Index], 0, 0, 0);
draw_sprite_ext(ports[p2Index], 0, width*2, 0, -1, 1, 0, c_white, 1);

draw_set_halign(fa_left)