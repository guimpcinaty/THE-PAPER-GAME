
if (vida <= 0) room_goto(rm_game_over);

if (obj_player.pode_troca) {
if (keyboard_check(ord("F"))){
	scr_trocar_sprite(spr_casa_floresta,spr_casa_cidade,spr_casa_cemiterio);
}
}

if (tempo >= 0) {
	frames++;
	if (frames >= 60){
		frames = 0; 
		tempo--;
	}
}else{
	room_goto(destino);
}