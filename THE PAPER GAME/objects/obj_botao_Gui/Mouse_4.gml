
audio_play_sound(snd_sfx,0,false)

switch(action) {
    case "play":
        room_goto(Level1);
		if (file_exists("savelegal.ini")){
			scr_load_game()
		}else{
			scr_save_game()
		}
        break;
    case "options":
        instance_create_layer(x,y,layer,obj_configuracoes)
        break;
    case "exit":
        game_end();
        break;
}

