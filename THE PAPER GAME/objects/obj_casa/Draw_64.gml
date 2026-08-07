
draw_set_font(fnt_grande)
draw_set_color(c_black)
draw_text(64,64,string(tempo))
draw_text(64,96,string(global.estado))

var posX = 608;
var posY = 64;

draw_sprite(spr_barra_fundo, 0, posX, posY);

var largura_sprite = sprite_get_width(spr_barrinha_vida);
var altura_sprite = sprite_get_height(spr_barrinha_vida);
var porcentagem = vida / vida_max;
var largura_corte = largura_sprite * porcentagem;

var offset_x = 290;		
var offset_y = 190;		

draw_sprite_part(spr_barrinha_vida, 0, 0, 0, largura_corte, altura_sprite, posX - offset_x, posY - offset_y);

draw_text(view_get_camera(0)+500,view_get_camera(0)+25,"VIDA")

