


var _right = keyboard_check(imputs.right)
var _left =  keyboard_check(imputs.left)
var _up = keyboard_check(imputs.up)
var _down = keyboard_check(imputs.down)
var _troca = keyboard_check(imputs.troca)

velh += (_right - _left) * vel; 
velv += (_down - _up) * vel;

if (_right) ang_tiro = 0

//var _no_chao = place_meeting(x,y + 1, obj_chao) 

if (pode_troca) {
	if (_troca) {
		scr_trocar_estado();
		pode_troca = false;
		alarm[0] = 15;
	}
}

// Step Event do obj_player
// Atualiza para onde o player está olhando (baseado no mouse)
olhar_direcao = point_direction(x, y, mouse_x, mouse_y);

if (mouse_check_button_pressed(mb_left) && pode_atacar) {
    pode_atacar = false;
    alarm[1] = cooldown_ataque; // Alarme para liberar o próximo ataque
    
    // Cria a hitbox exatamente na posição do player
    var inst = instance_create_layer(x, y, layer, obj_atk_player);
    inst.dono = id; // Passa o ID do player para a hitbox seguir
    inst.image_angle = olhar_direcao; // Rotaciona o sprite do ataque
}


//if (keyboard_check_pressed(_right)) image_xscale = -1 else image_xscale = 1
