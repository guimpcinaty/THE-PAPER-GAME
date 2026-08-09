if (!ativo) exit;

// Verifica se o mouse está sobre o objeto
var mousesobre = position_meeting(mouse_x, mouse_y, id);
var mouseclick = mouse_check_button_pressed(mb_left);

if (!ativo && mousesobre && mouseclick) {
    var saldo = variable_global_get(moeda);
    var meulevel = variable_global_get(varnome);

    // Verifica se pode comprar
    if (saldo >= custo && meulevel < maxlevel) {
        // Subtrai o custo e aumenta o nível
        variable_global_set(moeda, saldo - custo);
        variable_global_set(varnome, meulevel + 50);

        // Libera os alvos (filhos)
        for (var i = 0; i < array_length(alvos); i++) {
            alvos[i].ativo = true;
            alvos[i].pai = id;
        }
		
    }
}


var _mouse_sobre = place_meeting(mouse_x, mouse_y, id);
var _mouse_click = mouse_check_button_pressed(mb_left);

if (_mouse_sobre) {
	image_xscale = 2;
	image_yscale = 2;

	if (_mouse_click) {
		var _qtd = array_length(alvos);
		if (_qtd > 0) {
			for (var i = 0; i < _qtd; i++) {
				var _atual = alvos[i];
				_atual.ativo = true; // libera o próximo upgrade
			}
		}
	}
} else {
	image_xscale = 1;
	image_yscale = 1;
}

