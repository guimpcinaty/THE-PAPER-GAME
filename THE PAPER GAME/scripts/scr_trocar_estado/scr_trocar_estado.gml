function scr_trocar_estado(){
	if (global.estado == "floresta") {
		global.estado = "cidade"
		exit;
	}
	if (global.estado == "cidade") {
		global.estado = "cemiterio"
		exit;
	}
	if (global.estado == "cemiterio") {
		global.estado = "floresta"
		global.ciclos++
		exit;
	}
}