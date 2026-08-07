
draw_set_font(fnt_grande)
draw_set_color(c_black)
draw_text(64,64,string(tempo))
draw_text(64,96,string(global.estado))

draw_healthbar(view_get_camera(0)+300,view_get_camera(0),view_get_camera(0)+1000,view_get_camera(0)+50,vida/vida_max * 100,c_black,c_red,c_lime,0,false,false)
draw_text(view_get_camera(0)+500,view_get_camera(0)+25,"VIDA")