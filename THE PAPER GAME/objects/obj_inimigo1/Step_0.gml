estado = global.estado;
if (vida <= 0) instance_destroy();

if (instance_exists(obj_torreta)){
	move_towards_point(obj_torreta.x, obj_torreta.y, vel);
	if (collision_point(x,y,obj_torreta,false,false) && !obj_torreta.invencivel){
		obj_torreta.vida -= dano;
		obj_torreta.invencivel = true;
		obj_torreta.alarm[1] = 30;
	}
}else if (instance_exists(obj_casa)) {
	move_towards_point(obj_casa.x, obj_casa.y, vel);
	if (collision_point(x,y,obj_casa,false,false) && !obj_casa.invencivel){
		obj_casa.vida -= dano;
		obj_casa.invencivel = true;
		obj_casa.alarm[1] = 30;
	}
}

if (estado == "floresta") {
	sprite_index = spr_noz_inm;
	vel = 3;
}else if (estado == "cidade") {
	sprite_index = spr_escorpiao;
	vel = 0;
	if(!atk) {
		atk = true;
		instance_create_layer(x,y,"instances",obj_tiros_robo);
		obj_casa.alarm[1] = 30;
		alarm[0] = atk_cooldown;
	}
}else if (estado == "cemiterio") {
	sprite_index = spr_mimico;
	image_xscale = 0.085;
	image_yscale = 0.085;
	vel = 0;
	if(!atk) {
		atk = true;
		vel = 20;
		obj_casa.alarm[1] = 30;
		alarm[0] = atk_cooldown/2;
	}
}