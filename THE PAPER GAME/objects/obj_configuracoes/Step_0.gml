
if (!buttons_created) {
    // Criar botões de volume
    instance_create_layer(300, 288, "Instances", obj_volume_up);
    instance_create_layer(700, 288, "Instances", obj_volume_down);
    
    // Criar botões de brilho
    instance_create_layer(300, 544, "Instances", obj_brilho_up);
    instance_create_layer(700, 544, "Instances", obj_brilho_down);
    
    // Criar botão de dificuldade
    instance_create_layer(500, 832, "Instances", obj_difficulty_button);
    
    buttons_created = true; // Marca que os botões já foram criados
}
