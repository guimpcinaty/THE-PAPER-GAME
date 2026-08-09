function scr_save_game(){
	ini_open("savelegal.ini");
	ini_write_real("real","torretas",global.qtd_torretas);
	ini_write_real("real","ciclos",global.ciclos);
	ini_write_real("real","consequencias1",global.dano_esp);
	ini_write_real("real","consequencias2",global.dano_inm);
	ini_write_real("real","consequencias3",global.vida_esp);
	ini_write_real("real","consequencias4",global.vida_inm);
	ini_write_string("string","estado",global.estado);
	ini_close();
}