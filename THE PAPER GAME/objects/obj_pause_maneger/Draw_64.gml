
if (pausado) {
    var gui_width = display_get_gui_width();
    var gui_height = display_get_gui_height();
    var center_x = gui_width / 2;
    var center_y = gui_height / 2;
    
    // ===== OVERLAY ESCURO COM VINHETA =====
    
    draw_set_alpha(menu_alpha * 0.7);
    draw_rectangle_color(0, 0, gui_width, gui_height,
        make_color_rgb(20, 15, 10),
        make_color_rgb(20, 15, 10),
        make_color_rgb(40, 30, 20),
        make_color_rgb(40, 30, 20),
        false
    );
    
    // Vinheta nas bordas
    draw_set_alpha(menu_alpha * 0.5);
    draw_set_color(c_black);
    draw_rectangle(0, 0, gui_width, 100, false);
    draw_set_alpha(menu_alpha * 0.3);
    draw_rectangle(0, 20, gui_width, 80, false);
    
    draw_set_alpha(menu_alpha * 0.5);
    draw_rectangle(0, gui_height - 100, gui_width, gui_height, false);
    draw_set_alpha(menu_alpha * 0.3);
    draw_rectangle(0, gui_height - 80, gui_width, gui_height - 20, false);
    
    // ===== VAPOR STEAMPUNK =====
    
    for (var i = 0; i < array_length(vapor_particles); i++) {
        var v = vapor_particles[i];
        draw_set_alpha(v.alpha * menu_alpha);
        draw_circle_color(v.x, v.y, v.size, 
            make_color_rgb(200, 180, 150), 
            make_color_rgb(100, 90, 70), 
            false);
    }
    
    // ===== PAINEL PRINCIPAL STEAMPUNK =====
    
    var panel_w = 500 * menu_scale;
    var panel_h = 350 * menu_scale;
    
    // Sombra do painel
    draw_set_alpha(menu_alpha * 0.4);
    draw_set_color(c_black);
    draw_rectangle(
        center_x - panel_w/2 + 8,
        center_y - panel_h/2 + 8,
        center_x + panel_w/2 + 8,
        center_y + panel_h/2 + 8,
        false
    );
    
    // Fundo do painel (metal envelhecido)
    draw_set_alpha(menu_alpha);
    draw_rectangle_color(
        center_x - panel_w/2,
        center_y - panel_h/2,
        center_x + panel_w/2,
        center_y + panel_h/2,
        make_color_rgb(80, 60, 40),
        make_color_rgb(60, 45, 30),
        make_color_rgb(50, 38, 25),
        make_color_rgb(70, 53, 35),
        false
    );
    
    // Bordas rebites steampunk
    draw_set_color(make_color_rgb(100, 80, 50));
    draw_rectangle(
        center_x - panel_w/2,
        center_y - panel_h/2,
        center_x + panel_w/2,
        center_y + panel_h/2,
        true
    );
    
    // Linhas decorativas
    draw_line_width(
        center_x - panel_w/2 + 10,
        center_y - panel_h/2 + 10,
        center_x + panel_w/2 - 10,
        center_y - panel_h/2 + 10,
        3
    );
    draw_line_width(
        center_x - panel_w/2 + 10,
        center_y + panel_h/2 - 10,
        center_x + panel_w/2 - 10,
        center_y + panel_h/2 - 10,
        3
    );
    
    // Rebites nos cantos
    var rivet_color = make_color_rgb(120, 100, 60);
    draw_set_color(rivet_color);
    var rivet_positions = [
        {x: center_x - panel_w/2 + 15, y: center_y - panel_h/2 + 15},
        {x: center_x + panel_w/2 - 15, y: center_y - panel_h/2 + 15},
        {x: center_x - panel_w/2 + 15, y: center_y + panel_h/2 - 15},
        {x: center_x + panel_w/2 - 15, y: center_y + panel_h/2 - 15}
    ];
    
    for (var i = 0; i < array_length(rivet_positions); i++) {
        draw_circle(rivet_positions[i].x, rivet_positions[i].y, 5, false);
        draw_set_color(make_color_rgb(80, 65, 40));
        draw_circle(rivet_positions[i].x, rivet_positions[i].y, 3, false);
        draw_set_color(rivet_color);
    }
    
    // ===== ENGRENAGENS DECORATIVAS =====
    
    // Engrenagem esquerda
    draw_set_alpha(menu_alpha);
    draw_set_color(make_color_rgb(150, 120, 80));
    var gear_x = center_x - panel_w/2 + 40;
    var gear_y = center_y - panel_h/2 + 40;
    var gear_size = 25;
    
    for (var i = 0; i < 8; i++) {
        var angle = engrenagem_rotacao + (i * 45);
        var x1 = gear_x + lengthdir_x(gear_size, angle);
        var y1 = gear_y + lengthdir_y(gear_size, angle);
        var x2 = gear_x + lengthdir_x(gear_size * 0.7, angle + 20);
        var y2 = gear_y + lengthdir_y(gear_size * 0.7, angle + 20);
        draw_line_width(x1, y1, x2, y2, 5);
    }
    draw_circle(gear_x, gear_y, gear_size * 0.5, false);
    draw_set_color(make_color_rgb(100, 80, 50));
    draw_circle(gear_x, gear_y, gear_size * 0.3, false);
    
    // Engrenagem direita (gira ao contrário)
    draw_set_color(make_color_rgb(150, 120, 80));
    gear_x = center_x + panel_w/2 - 40;
    gear_y = center_y - panel_h/2 + 40;
    
    for (var i = 0; i < 8; i++) {
        var angle = -engrenagem_rotacao + (i * 45);
        var x1 = gear_x + lengthdir_x(gear_size, angle);
        var y1 = gear_y + lengthdir_y(gear_size, angle);
        var x2 = gear_x + lengthdir_x(gear_size * 0.7, angle + 20);
        var y2 = gear_y + lengthdir_y(gear_size * 0.7, angle + 20);
        draw_line_width(x1, y1, x2, y2, 5);
    }
    draw_circle(gear_x, gear_y, gear_size * 0.5, false);
    draw_set_color(make_color_rgb(100, 80, 50));
    draw_circle(gear_x, gear_y, gear_size * 0.3, false);
    
    // ===== TÍTULO "PAUSE" STEAMPUNK =====
    
    draw_set_alpha(menu_alpha);
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    draw_set_font(fnt_grande);
    
    // Sombra do título
    draw_set_color(c_black);
    draw_text_transformed(
        center_x + 3, center_y - 100 + 3,
        "|| PAUSADO ||",
        2.5 * menu_scale, 2.5 * menu_scale, 0
    );
    
    // Título principal (dourado envelhecido)
    draw_set_color(make_color_rgb(180, 140, 80));
    draw_text_transformed(
        center_x, center_y - 100,
        "|| PAUSADO ||",
        2.5 * menu_scale, 2.5 * menu_scale, 0
    );
    
    // Brilho no título
    draw_set_alpha(menu_alpha * 0.6);
    draw_set_color(make_color_rgb(220, 180, 100));
    draw_text_transformed(
        center_x, center_y - 101,
        "|| PAUSADO ||",
        2.5 * menu_scale, 2.5 * menu_scale, 0
    );
    
    // ===== BOTÕES STEAMPUNK =====
    
    draw_set_alpha(menu_alpha);
    
    for (var i = 0; i < array_length(botoes); i++) {
        var btn = botoes[i];
        var by = center_y + btn.y_offset;
        var bw = 300;
        var bh = 50;
        
        var is_selected = (i == botao_selecionado);
        var btn_scale = is_selected ? 1.05 : 1;
        
        // Fundo do botão (placa de metal)
        if (is_selected) {
            draw_set_color(make_color_rgb(100, 80, 50));
        } else {
            draw_set_color(make_color_rgb(70, 55, 35));
        }
        
        draw_rectangle(
            center_x - (bw/2) * btn_scale,
            by - (bh/2) * btn_scale,
            center_x + (bw/2) * btn_scale,
            by + (bh/2) * btn_scale,
            false
        );
        
        // Borda do botão
        draw_set_color(make_color_rgb(120, 100, 60));
        draw_rectangle(
            center_x - (bw/2) * btn_scale,
            by - (bh/2) * btn_scale,
            center_x + (bw/2) * btn_scale,
            by + (bh/2) * btn_scale,
            true
        );
        
        // Rebites do botão
        draw_circle(center_x - (bw/2 - 10) * btn_scale, by, 4, false);
        draw_circle(center_x + (bw/2 - 10) * btn_scale, by, 4, false);
        
        // Texto do botão
        if (is_selected) {
            // Sombra
            draw_set_color(c_black);
            draw_text_transformed(center_x + 2, by + 2, btn.texto, 1.2, 1.2, 0);
            
            // Texto principal (dourado brilhante)
            draw_set_color(make_color_rgb(220, 180, 100));
            draw_text_transformed(center_x, by, btn.texto, 1.2, 1.2, 0);
        } else {
            draw_set_color(make_color_rgb(150, 130, 90));
            draw_text(center_x, by, btn.texto);
        }
    }
    
    // ===== INSTRUÇÕES =====
    
    draw_set_alpha(menu_alpha * 0.7);
    draw_set_color(make_color_rgb(150, 130, 90));
    draw_set_font(2);
    draw_text(center_x, center_y + panel_h/2 - 30, "[↑↓] Navegar  |  [ENTER] Selecionar");
    
    // Resetar
    draw_set_font(-1);
    draw_set_halign(fa_left);
    draw_set_valign(fa_top);
    draw_set_alpha(1);
    draw_set_color(c_white);
}