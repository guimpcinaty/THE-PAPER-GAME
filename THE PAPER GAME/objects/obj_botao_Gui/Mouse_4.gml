
switch(action) {
    case "play":
        room_goto(Level1);
        break;
    case "options":
        instance_create_layer(x,y,layer,obj_configuracoes)
        break;
    case "exit":
        game_end();
        break;
}

