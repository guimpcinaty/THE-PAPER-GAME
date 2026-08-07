
// Step Event do obj_hitbox
if (instance_exists(dono)) {
    // Pega o ângulo atual do olhar do player
    image_angle = dono.olhar_direcao;
    
    // Distância em pixels para frente do player (ajuste esse valor)
    var distancia_frente = 64; 
    
    // Calcula a posição exata à frente usando o ângulo
    x = dono.x + lengthdir_x(distancia_frente, image_angle);
    y = dono.y + lengthdir_y(distancia_frente, image_angle);
    
} else {
    instance_destroy();
}

