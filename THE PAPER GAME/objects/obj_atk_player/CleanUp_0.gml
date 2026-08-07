
// Limpa a lista da memória quando o ataque sumir
if (variable_instance_exists(id, "atingidos")) {
    ds_list_destroy(atingidos);
}
