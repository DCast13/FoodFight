if !p1Ready {
	if (kcp(ord("D")))
		p1Index++
	
	if (kcp(ord("A")))
		p1Index--
		
	if (kcp(ord("R")))
		p1Ready = true
		global.p1Char = p1Index
		
}
	
if !p2Ready {
	if (kcp(vk_right))
		p2Index++
	
	if (kcp(vk_left))
		p2Index--
			
	if (kcp(ord("M")))
		p2Ready = true
		global.p2Char = p2Index
}

if p1Ready and p2Ready {
	if alarm[0] < 0
		alarm[0] = room_speed *2
}
	
p1Index = clamp(p1Index, 0, MAX_CHARS-1);
p2Index = clamp(p2Index, 0, MAX_CHARS-1);
//comIndex = clamp(p1Index, 0, MAX_CHARS-1);