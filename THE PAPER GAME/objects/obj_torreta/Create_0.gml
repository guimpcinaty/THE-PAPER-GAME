
global.moedas -= 3;

chance = global.qtd_torretas/global.moedas * 100;



global.qtd_torretas++;
vida_max = global.vida_esp/global.qtd_torretas;
vida = vida_max 

invencivel = false;

atk = 5

pode_atk = true

image_xscale = 0.375
image_yscale = 0.375

audio_play_sound(snd_sfx_tor,0,false)

scr_consequencia(25,50,global.dano_esp);
scr_consequencia(25,50,global.dano_inm);
scr_consequencia(25,50,global.vida_esp);
scr_consequencia(25,50,global.vida_inm);