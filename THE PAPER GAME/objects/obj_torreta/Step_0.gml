
if (vida <= 0) instance_destroy();

if (atk > 0){
	atk--;
}else{
	if (instance_exists(obj_inimigo_pai) && pode_atk) {
	var alvo = obj_carpinteiro
	var _tiro = instance_create_layer(x,y,"instances",obj_noz);
	_tiro.image_angle = point_direction(x,y,alvo.x,alvo.y);
	_tiro.dono = id
	pode_atk = false;
	alarm[0] = 30;
	if (x > obj_carpinteiro.x) {
		image_xscale = -0.3
	}else{
		image_xscale = 0.3
	}
	}
}