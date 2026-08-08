
// Step Event do obj_hitbox
if (instance_exists(dono)) {
    // Pega o ângulo atual do olhar do player
    image_angle = dono.olhar_direcao;
} else {
    instance_destroy();
}

