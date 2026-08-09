function scr_trocar_estado() {
    // pausa todos os sons que estão tocando
    audio_pause_all();

    if (global.estado == "floresta") {
        global.estado = "cidade";
        audio_play_sound(snd_cidade, 1, true);
        exit;
    }
    if (global.estado == "cidade") {
        global.estado = "cemiterio";
        audio_play_sound(snd_spooky_scary, 1, true);
        exit;
    }
    if (global.estado == "cemiterio") {
        global.estado = "floresta";
        global.ciclos++;
        audio_play_sound(snd_florest, 1, true);
        exit;
    }
}