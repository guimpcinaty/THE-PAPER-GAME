
draw_set_font(fnt_grande)
draw_set_color(c_black)
draw_text(64,64,string(tempo))
draw_text(64,96,string(global.estado))
draw_text(64,128,"cosncequencias: " + string(global.alteracoes))
draw_sprite_ext(spr_moeda,0,64,256,0.1,0.1,0,c_white,1)
draw_text(64,250,string(global.moedas))

draw_text(1024,64,"seu dano:" + string(global.dano_esp))
draw_text(1024,96,"dano inimigos: " + string(global.dano_inm))
draw_text(1024,128,"sua vida: " + string(global.vida_esp))
draw_text(1024,160,"vida inimigos: " + string(global.vida_inm))

var posX = 608;
var posY = 64;

draw_sprite(spr_barra_fundo, 0, posX, posY);

var largura_sprite = sprite_get_width(spr_barrinha_vida);
var altura_sprite = sprite_get_height(spr_barrinha_vida);
var porcentagem = vida / vida_max;
var largura_corte = largura_sprite * porcentagem;

var offset_x = 200;		
var offset_y = 80;		

draw_sprite_part(spr_barrinha_vida, 0, 0, 0, largura_corte, altura_sprite, posX-offset_x, posY-offset_y	);

draw_text(posX,posY,string(room))

