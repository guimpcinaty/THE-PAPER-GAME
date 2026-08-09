

// Verifica se o mouse está sobre o objeto
var mousesobre = position_meeting(mouse_x, mouse_y, id);
var mouseclick = mouse_check_button_pressed(mb_left);

	if (mousesobre) {
		image_xscale = 1.5;
		image_yscale = 1.5;
		if (mouseclick){
    var saldo = variable_global_get(moeda);
    var meulevel = variable_global_get(varnome);

    // Verifica se pode comprar
        // Subtrai o custo e aumenta o nível
        variable_global_set(moeda, saldo - custo);
        variable_global_set(varnome, meulevel + 1);
	}
    }else{
		image_xscale = 1;
		image_yscale = 1;
	}


