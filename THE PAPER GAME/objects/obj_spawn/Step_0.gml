
if (!instance_find(obj_inimigo_pai,5) && pode_inv){
	instance_create_layer(x,y,"instances",obj_carpinteiro)
	pode_inv = false
	alarm[0] = cooldown
}