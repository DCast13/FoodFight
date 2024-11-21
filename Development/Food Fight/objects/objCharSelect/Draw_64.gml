var width = room_width/2;
draw_set_font(fontMain)
draw_set_halign(fa_center)
draw_set_color(c_green)
draw_set_halign(fa_left)

for (var i = 0; i < MAX_CHARS; i++) {
	draw_sprite(icons[i], 0, 96+192*i+320, 192);
	
	if i == p1Index {
		draw_set_color(c_red)
		draw_text(448+192*i+32, 176, "P1");
		draw_set_color(c_white)
	}
	
	if i == p2Index {
		draw_set_color(c_blue)
		draw_text(448+192*i+32, 368, "P2");
		draw_set_color(c_white)
	}
}

if p1Ready and p2Ready
	draw_text(width, 100, "GET READY");

//draw character portraits
draw_sprite(ports[p1Index], 0, 0, 0);
draw_sprite_ext(ports[p2Index], 0, width*2, 0, -1, 1, 0, c_white, 1);

draw_set_halign(fa_left)