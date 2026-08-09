
global.qtd_torretas++;
vida_max = global.vida_esp/global.qtd_torretas;
vida = vida_max 

invencivel = false;

atk = 10

pode_atk = true

image_xscale = 0.375
image_yscale = 0.375

audio_play_sound(snd_sfx_tor,0,false)

scr_consequencia(100,50,choose(global.dano_esp,global.dano_inm,global.vida_esp,global.vida_inm));