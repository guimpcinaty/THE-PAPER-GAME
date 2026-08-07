
if (vida == 0) instance_destroy();

if (instance_exists(obj_casa)) {
        move_towards_point(obj_casa.x, obj_casa.y, 2);
		if (collision_point(x,y,obj_casa,false,false) && !obj_casa.invencivel){
			obj_casa.vida -= global.dano_inm;
			invencivel = true
			obj_casa.alarm[1] = 30;
		}
}

if (estado == "floresta") {
	sprite_index = spr_carpinteiro;
	if (!atk) {
		atk = true;
		if (collision_point(x,y,obj_casa,false,false) && !obj_casa.invencivel){
			obj_casa.vida -= global.dano_inm * 2;
			invencivel = true
			obj_casa.alarm[1] = 30;
		}
		alarm[0] = atk_cooldown;
	}
}