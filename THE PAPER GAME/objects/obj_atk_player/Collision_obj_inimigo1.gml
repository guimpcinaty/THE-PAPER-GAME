
// Verifica se o inimigo já não foi atingido por este golpe específico
if (!variable_instance_exists(id, "atingidos")) {
    atingidos = ds_list_create();
}

// Se o inimigo não estiver na lista, toma dano
if (ds_list_find_index(atingidos, other.id) == -1) {
    other.vida -= dano;
    ds_list_add(atingidos, other.id); // Adiciona à lista para não bater de novo
    
    // Opcional: Adicione um efeito de empurrão (knockback) no inimigo
    other.x += lengthdir_x(8, image_angle);
    other.y += lengthdir_y(8, image_angle);
}