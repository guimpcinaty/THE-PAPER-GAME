
if (!audio_is_playing(snd_intro) && !audio_is_playing(snd_loop)){
	audio_play_sound(snd_loop,1,true)
}

var _right = keyboard_check(imputs.right)
var _left =  keyboard_check(imputs.left)
var _up = keyboard_check(imputs.up)
var _down = keyboard_check(imputs.down)
var _troca = keyboard_check(imputs.troca)

velh += (_right - _left) * vel; 
velv += (_down - _up) * vel;

if (_right || _up || _down || _left) sprite_index = spr_player2

//var _no_chao = place_meeting(x,y + 1, obj_chao) 

if (pode_troca) {
	if (_troca) {
		sprite_index = spr_player_agachando;
		scr_trocar_estado();
		global.dano_esp += scr_consequencia(25,50,global.dano_esp);
		global.dano_inm += scr_consequencia(25,50,global.dano_inm);
		global.vida_esp += scr_consequencia(25,50,global.vida_esp);
		global.vida_esp += scr_consequencia(25,50,global.vida_inm);
		pode_troca = false;
		alarm[0] = 15;
	}
}
if (keyboard_check_pressed(imputs.troca) && pode_troca) {
    scr_trocar_estado();
    pode_troca = false;
    alarm[2] = 15; // tempo de cooldown pra poder trocar de novo, ajusta como quiser
}

// Step Event do obj_player
// Atualiza para onde o player está olhando (baseado no mouse)
olhar_direcao = point_direction(x, y, mouse_x, mouse_y);

if (mouse_check_button_pressed(mb_left) && pode_atacar) {
    pode_atacar = false;
    alarm[1] = cooldown_ataque; // Alarme para liberar o próximo ataque
    
    // Cria a hitbox exatamente na posição do player
    var inst = instance_create_layer(mouse_x, mouse_y, layer, obj_atk_player);
    inst.dono = id; // Passa o ID do player para a hitbox seguir
    inst.image_angle = olhar_direcao; // Rotaciona o sprite do ataque
}


if (_right) image_xscale = 0.07 else if (_left) image_xscale = -0.07

if (mouse_check_button_released(mb_right)){
	if (global.moedas >= custo_colocar) {
		instance_create_layer(mouse_x,mouse_y,layer,colocar);
	}
}
