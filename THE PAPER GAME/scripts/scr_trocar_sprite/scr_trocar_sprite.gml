function scr_trocar_sprite(_id1,_id2,_id3){
if (global.estado == "floresta") {
		sprite_index = _id1;
}
if (global.estado == "cidade") {
		sprite_index = _id2;
}
if (global.estado == "cemiterio") {
		sprite_index =_id3;
		global.ciclos++;
}
}