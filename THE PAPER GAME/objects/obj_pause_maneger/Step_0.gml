
// Detectar tecla de pause (ESC)
//step
if (keyboard_check_pressed(vk_escape)) {
    if (!pausado) {
        pausado = true;
        menu_alpha = 0;
        menu_scale = 0.8;
    } else {
        pausado = false;
    }
}

if (pausado) {
    // Animação de entrada
    if (menu_alpha < 1) {
        menu_alpha += 0.1;
        menu_scale = lerp(menu_scale, 1, 0.15);
    }
    
    // Rotação das engrenagens
    engrenagem_rotacao += 1;
    
    // Vapor steampunk
    vapor_timer++;
    if (vapor_timer > 10) {
        vapor_timer = 0;
        var vapor = {
            x: random_range(100, display_get_gui_width() - 100),
            y: display_get_gui_height() + 20,
            speed: random_range(1, 2),
            size: random_range(10, 25),
            alpha: random_range(0.2, 0.4)
        };
        array_push(vapor_particles, vapor);
    }
    
    // Atualizar partículas de vapor
    for (var i = array_length(vapor_particles) - 1; i >= 0; i--) {
        vapor_particles[i].y -= vapor_particles[i].speed;
        vapor_particles[i].alpha -= 0.005;
        vapor_particles[i].x += sin(vapor_particles[i].y * 0.05) * 0.5;
        
        if (vapor_particles[i].alpha <= 0) {
            array_delete(vapor_particles, i, 1);
        }
    }
    
    // Navegação com teclado
    if (keyboard_check_pressed(vk_up)) {
        botao_selecionado--;
        if (botao_selecionado < 0) {
            botao_selecionado = array_length(botoes) - 1;
        }
    }
    
    if (keyboard_check_pressed(vk_down)) {
        botao_selecionado++;
        if (botao_selecionado >= array_length(botoes)) {
            botao_selecionado = 0;
        }
    }
    
    // Detectar hover do mouse
    var gui_width = display_get_gui_width();
    var gui_height = display_get_gui_height();
    var center_x = gui_width / 2;
    var center_y = gui_height / 2;
    
    for (var i = 0; i < array_length(botoes); i++) {
        var by = center_y + botoes[i].y_offset;
        var bw = 300;
        var bh = 50;
        
        if (point_in_rectangle(
            window_mouse_get_x() * (gui_width / window_get_width()),
            window_mouse_get_y() * (gui_height / window_get_height()),
            center_x - bw/2, by - bh/2,
            center_x + bw/2, by + bh/2
        )) {
            botoes[i].hover = true;
            botao_selecionado = i;
        } else {
            botoes[i].hover = false;
        }
    }
    
    // Ações dos botões
    if (keyboard_check_pressed(vk_enter) || mouse_check_button_pressed(mb_left)) {
        // Verificar se clicou em um botão
        var mouse_on_button = false;
        for (var i = 0; i < array_length(botoes); i++) {
            if (botoes[i].hover) {
                mouse_on_button = true;
                botao_selecionado = i;
                break;
            }
        }
        
        if (keyboard_check_pressed(vk_enter) || mouse_on_button) {
            switch (botoes[botao_selecionado].acao) {
                case "continuar":
                    pausado = false;
                    break;
                    
                case "sair":
                    pausado = false;
                    room_goto(room_menu); // <-- TROQUE "rm_menu" pelo nome real da sua room de menu!
                    break;
            }
        }
    }
}