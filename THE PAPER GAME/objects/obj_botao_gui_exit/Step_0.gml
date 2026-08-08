
// Verifica se o mouse está sobre o botão
if (position_meeting(mouse_x, mouse_y, id)) {
// Aplica o efeito de quicada ao aumentar a escala
tween(obj_botao_gui_exit, "image_xscale", 1.5, tween_animation.elastic, 45);
tween(obj_botao_gui_exit, "image_yscale", 1.5, tween_animation.elastic, 45);
}
