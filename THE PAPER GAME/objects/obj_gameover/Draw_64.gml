var gui_w = display_get_gui_width();
var gui_h = display_get_gui_height();

draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_blue);
draw_set_font(fnt_grande_grande);

draw_text(gui_w / 2, gui_h / 2, "Voce morreu");

draw_set_halign(fa_left);
draw_set_valign(fa_top);