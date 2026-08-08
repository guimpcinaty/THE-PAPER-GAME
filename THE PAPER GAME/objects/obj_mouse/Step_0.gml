// Verifica o clique e se o alarme ainda não foi ativado
if (mouse_check_button_pressed(mb_left) and clicou == false) {
    sprite_atual = spr_mouse_clique; // Use o nome real do seu sprite de clique
    clicou = true;
    alarm[0] = 5; // AGORA SIM! Com os colchetes [0] corretos para o GameMaker
}
