
var alpha = 1 - global.brightness; // quanto menor o brilho, mais escuro
draw_set_color(c_black);
draw_set_alpha(alpha);
draw_rectangle(0, 0, room_width, room_height, false);
draw_set_alpha(1);
