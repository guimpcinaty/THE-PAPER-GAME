



var _mouse_sobre = place_meeting(mouse_x,mouse_y,id);
var _mouse_click = mouse_check_button_pressed(mb_left);

if (_mouse_sobre) {
	image_xscale = 2
	image_yscale = 2
	if (_mouse_click) {
		//checar antes
		var _qtd = array_length(alvos)
		if (_qtd > 0) {
			for (var i = 0; i < _qtd; i++) {
				var _atual = alvos[i];
				
				if (_atual.ativo == true) {
					_atual.ativo = false;
				}
			}
		}
	}
}else{
	image_xscale = 1
	image_yscale = 1
}