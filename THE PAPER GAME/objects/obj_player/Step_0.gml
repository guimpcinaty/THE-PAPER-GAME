
var _right = keyboard_check(imputs.right)
var _left =  keyboard_check(imputs.left)
var _jump = keyboard_check(imputs.jump)

velh += (_right - _left) * vel; 

var _no_chao = place_meeting(x,y + 1, obj_chao) 

if (_no_chao){
	if(_jump) {
		velv = -velj;
	}
}else{
	velv+= grav
}

if (keyboard_check_pressed(_right)) image_xscale = -1 else image_xscale = 1
