


var _right = keyboard_check(imputs.right)
var _left =  keyboard_check(imputs.left)
var _jump = keyboard_check(imputs.jump)
var _troca = keyboard_check(imputs.troca)

velh += (_right - _left) * vel; 

var _no_chao = place_meeting(x,y + 1, obj_chao) 

if (_no_chao){
	if(_jump) {
		velv = -velj;
	}
}else{
	velv+= grav
}

if (pode_troca) {
	if (_troca) {
		scr_trocar_estado();
		pode_troca = false;
		alarm[0] = 15;
	}
}
if (keyboard_check_pressed(_right)) image_xscale = -1 else image_xscale = 1
