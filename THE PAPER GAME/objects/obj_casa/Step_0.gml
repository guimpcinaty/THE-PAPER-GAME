

if (tempo >= 0) {
	frames++
	if (frames >= 60){
		frames = 0 
		tempo--
	}
}else{
	room_goto_next();
}