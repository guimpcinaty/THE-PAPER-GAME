image_index =1;
if (!grande) {
    grande = true;
    tween(id, "image_xscale", 1.5, tween_animation.elastic, 45);
    tween(id, "image_yscale", 1.5, tween_animation.elastic, 45);
}

audio_play_sound(snd_sfx,0,false)