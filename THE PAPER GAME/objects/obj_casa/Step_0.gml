
if (keyboard_check(ord("S"))){
if (global.estado == "floresta") {
		sprite_index = spr_casa_cidade;
}
if (global.estado == "cidade") {
		sprite_index = spr_casa_cemiterio;
}
if (global.estado == "cemiterio") {
		sprite_index = spr_casa_floresta;
		global.ciclos++;
}
}

if (tempo >= 0) {
	frames++;
	if (frames >= 60){
		frames = 0; 
		tempo--;
	}
}else{
	room_goto_next();
}