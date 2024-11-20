if !p1Ready {
	if (kcp(ord("D")))
		p1Index++
	
	if (kcp(ord("A")))
		p1Index--
		
	if (kcp(ord("R")))
		p1Ready = true
}
	
if !p2Ready {
	if (kcp(vk_right))
		p2Index++
	
	if (kcp(vk_left))
		p2Index--
			
	if (kcp(ord(",")))
		p2Ready = true
}


	
p1Index = clamp(p1Index, 0, MAX_CHARS-1);
p2Index = clamp(p1Index, 0, MAX_CHARS-1);
//comIndex = clamp(p1Index, 0, MAX_CHARS-1);