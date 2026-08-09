if (pd_girar) {
    if (colocar == obj_torreta) {
        custo_colocar = 5;
        colocar = obj_ave;
        pd_girar = false;
        alarm[2] = tempo_colocar;
    }
    else if (colocar == obj_ave) {
        colocar = obj_touro;
        pd_girar = false;
        alarm[2] = tempo_colocar;
    }
    else if (colocar == obj_touro) {
        custo_colocar = 3;
        colocar = obj_torreta;
        pd_girar = false;
        alarm[2] = tempo_colocar;
    }
}

