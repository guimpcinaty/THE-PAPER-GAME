if (vida <= 0) room_goto(rm_game_over);

if (pode_troca) {
    if (keyboard_check(ord("F"))) {
        scr_trocar_sprite(spr_casa_floresta, spr_casa_cidade, spr_casa_cemiterio);
        pode_troca = false;
        alarm[0] = 30;
    }
}

if (tempo >= 0) {
    frames++;
    if (frames >= 60) {
        frames = 0;
        tempo--;
    }
} else {
    room_goto(destino);
}

if (mostrar_wave) {
    wave_timer++;
    
    if (wave_timer > wave_hold) {
        wave_alpha -= wave_fade_speed;
        
        if (wave_alpha <= 0) {
            wave_alpha = 0;
            mostrar_wave = false;
        }
    }
}