
if (instance_exists(obj_inimigo_pai)){
	move_towards_point(obj_inimigo_pai.x, obj_inimigo_pai.y, vel); 
}else{
	vel = 0;
}