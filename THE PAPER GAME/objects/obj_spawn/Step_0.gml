
if (!instance_find(obj_inimigo_pai,5) && pode_inv){
	instance_create_layer(x,y,"instances",choose(obj_carpinteiro,obj_inimigo1))
	pode_inv = false
	alarm[0] = cooldown
}