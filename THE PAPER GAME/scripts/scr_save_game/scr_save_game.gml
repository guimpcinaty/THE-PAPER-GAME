function scr_save_game(){
	ini_open("savelegal.ini");
	ini_write_real("real","torretas",global.qtd_torretas);
	ini_read_real("real","ciclos",global.ciclos);
	ini_write_real("real","consequencias",global.dano_esp);
	ini_write_real("real","consequencias",global.dano_inm);
	ini_write_real("real","consequencias",global.vida_esp);
	ini_write_real("real","consequencias",global.vida_inm);
	ini_write_string("string","estado",global.estado);
	ini_close();
}