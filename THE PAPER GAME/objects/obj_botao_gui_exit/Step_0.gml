var _largura = sprite_get_width(sprite_index);
var _altura = sprite_get_height(sprite_index);

var _folga = 6; // pixels de margem extra pra evitar flicker na borda. AJUSTA se precisar

var _esq  = x - sprite_get_xoffset(sprite_index);
var _dir  = _esq + _largura;
var _topo = y - sprite_get_yoffset(sprite_index);
var _baixo = _topo + _altura;

var _mouse_em_cima;

if (grande) {
	// Já tá em hover: só sai se passar da borda MAIS a folga (área maior pra sair)
	_mouse_em_cima = (mouse_x >= _esq - _folga && mouse_x <= _dir + _folga 
	               && mouse_y >= _topo - _folga && mouse_y <= _baixo + _folga);
} else {
	// Ainda não tá em hover: entra normal, sem folga (área exata do sprite)
	_mouse_em_cima = (mouse_x >= _esq && mouse_x <= _dir 
	               && mouse_y >= _topo && mouse_y <= _baixo);
}

if (_mouse_em_cima && !grande) {
    grande = true;
    tween(id, "image_xscale", 1.5, tween_animation.elastic, 45);
    tween(id, "image_yscale", 1.5, tween_animation.elastic, 45);
} else if (!_mouse_em_cima && grande) {
    grande = false;
    tween(id, "image_xscale", 1, tween_animation.elastic, 45);
    tween(id, "image_yscale", 1, tween_animation.elastic, 45);
}