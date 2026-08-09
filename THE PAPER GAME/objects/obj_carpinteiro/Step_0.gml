
estado = global.estado

if (vida == 0) instance_destroy();

if (instance_exists(obj_torreta)){
	move_towards_point(obj_torreta.x, obj_torreta.y, vel);
	if (collision_point(x,y,obj_torreta,false,false) && !obj_torreta.invencivel){
		obj_torreta.vida -= dano;
		obj_torreta.invencivel = true
		obj_torreta.alarm[1] = 30;
	}
}else if (instance_exists(obj_casa)) {
        move_towards_point(obj_casa.x, obj_casa.y, vel);
		if (collision_point(x,y,obj_casa,false,false) && !obj_casa.invencivel){
			obj_casa.vida -= dano;
			invencivel = true
			obj_casa.alarm[1] = 30;
		}
}

if (estado == "floresta") {
	sprite_index = spr_carpinteiro;
	if (!atk) {
		atk = true;
		if (collision_point(x,y,obj_casa,false,false) && !obj_casa.invencivel){
			sprite_index = spr_carpinteiro_atk;
			obj_casa.vida -= dano;
			invencivel = true
			obj_casa.alarm[1] = 30;
		}
		alarm[0] = atk_cooldown;
	}
}
if (estado == "cidade") {
	
	vel = 0;
	if(!atk) {
		atk = true
		instance_create_layer(x,y,"instances",obj_tiros_robo)
		obj_casa.alarm[1] = 30;
		alarm[0] = atk_cooldown;
	}
}
if (estado == "cemiterio") {
	sprite_index = spr_carpinteiro_esqueleto;
	vel = 4;
	dano = 3;
}
