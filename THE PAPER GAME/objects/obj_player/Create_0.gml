global.som_atual = -1;
global.estado = "floresta";
global.ciclos = 0;
vel = 0.5;
velj = 10;
velv = 0;
velh = 0;
grav = .5;

globais = choose(global.dano_esp,global.dano_inm,global.vida_esp,global.vida_inm);
global_esc = globais

pode_troca = true

// Create Event do obj_player
pode_atacar = true;
cooldown_ataque = 20; // Tempo em frames entre os ataques
olhar_direcao = 0;

imputs = {
	left	:	ord("A"),
	right	:	ord("D"),
	up		:	ord("W"),
	down	:	ord("S"),
	troca	:	ord("F"),
}

// Create Event do obj_player
pode_atacar = true;
cooldown_ataque = 20; // Tempo em frames entre os ataques
olhar_direcao = 0;

global.estado = "floresta";
