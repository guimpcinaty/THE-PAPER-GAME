// casalegal 123

if (!variable_global_exists("wave_anterior")) {
    global.wave_anterior = 0;
}

vida_max = global.vida_esp;
vida = vida_max;
tempo = global.tempo_jogo;
frames = global.frames;
invencivel = false;
pode_troca = true;

audio_pause_all();
audio_play_sound(snd_florest, 1, true);

switch (room) {
    case Level1: global.wave = 1; break;
    case Level2: global.wave = 2; break;
    case Level3: global.wave = 3; break;
}

if (global.wave != global.wave_anterior) {
	if (global.wave >= 2){
    global.moedas += 10;
	}
    global.wave_anterior = global.wave;
}

// texto de wave no meio da tela com fade
mostrar_wave = true;
wave_timer = 0;
wave_alpha = 1;
wave_hold = 90;        // 1.5 segundos parado com opacidade total
wave_fade_speed = 0.01; // fade bem mais lento agora (100 frames pra sumir = quase 2 segundos)