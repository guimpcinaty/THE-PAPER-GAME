draw_set_font(fnt_grande);
draw_set_color(c_black);

draw_text(64, 64, string(tempo));
draw_text(64, 96, string(global.estado));
draw_text(64, 128, "cosncequencias: " + string(global.alteracoes));
draw_text(64, 160, "Wave: " + string(global.wave));

draw_sprite_ext(spr_barra_fundo, 0, 64, 256, 0.6, 0.6, 0, c_white, 1);
draw_text(64, 250, string(global.moedas));
draw_text(64, 290, "Moedas");

draw_text(1024, 64, "seu dano:" + string(global.dano_esp));
draw_text(1024, 96, "dano inimigos: " + string(global.dano_inm));
draw_text(1024, 128, "sua vida: " + string(global.vida_esp));
draw_text(1024, 160, "vida inimigos: " + string(global.vida_inm));

var posX = 608;
var posY = 64;
draw_sprite(spr_barra_fundo, 0, posX, posY);

var largura_sprite = sprite_get_width(spr_barrinha_vida);
var altura_sprite = sprite_get_height(spr_barrinha_vida);
var porcentagem = vida / vida_max;
var largura_corte = largura_sprite * porcentagem;
var offset_x = 200;
var offset_y = 80;

draw_sprite_part(spr_barrinha_vida, 0, 0, 0, largura_corte, altura_sprite, posX - offset_x, posY - offset_y);
draw_text(posX, posY, "VIDA");

if (mostrar_wave) {
    var gui_w = display_get_gui_width();
    var gui_h = display_get_gui_height();
    
    draw_set_alpha(wave_alpha);
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    draw_set_color(c_red);
    draw_set_font(fnt_grande_grande);
    
    draw_text_transformed(gui_w / 2, gui_h / 2, "Wave " + string(global.wave), 2, 2, 0);
    
    draw_set_alpha(1);
    draw_set_halign(fa_left);
    draw_set_valign(fa_top);
}