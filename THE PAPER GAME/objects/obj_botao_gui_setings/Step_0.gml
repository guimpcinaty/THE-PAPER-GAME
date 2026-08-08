
// Verifica se o mouse está sobre o botão
if (!grande) {
if (position_meeting(mouse_x, mouse_y, id)) {
	grande = true;
// Aplica o efeito de quicada ao aumentar a escala
tween(obj_botao_gui_setings, "image_xscale", 1.5, tween_animation.elastic, 45);
tween(obj_botao_gui_setings, "image_yscale", 1.5, tween_animation.elastic, 45);
}else{
	image_xscale = 1;
	image_yscale = 1;
}
}