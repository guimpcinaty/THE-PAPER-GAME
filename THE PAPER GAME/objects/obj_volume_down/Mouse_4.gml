
global.sound_volume = clamp(global.sound_volume - 0.1, 0, 1);
audio_master_gain(global.sound_volume);
