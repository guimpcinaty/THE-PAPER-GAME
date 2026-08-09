atk = false;

// Volta o sprite pro normal do estado atual
if (estado == "floresta") {
	sprite_index = spr_carpinteiro;
}else if (estado == "cidade"){
	sprite_index = spr_carpinteiro_robo;
} else if (estado == "cemiterio") {
	sprite_index = spr_carpinteiro_esqueleto;
}
// "cidade" não troca sprite (segue o padrão que você já tinha)