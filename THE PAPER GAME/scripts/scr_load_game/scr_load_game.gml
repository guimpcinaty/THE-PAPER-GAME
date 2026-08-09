function scr_load_game(){
	ini_open("savelegal.ini");
	ini_read_real("real","torretas",0);
	ini_read_real("real","ciclos",0);
	ini_read_real("real","consequencias1",20);
	ini_read_real("real","consequencias2",5);
	ini_read_real("real","consequencias3",100);
	ini_read_real("real","consequencias4",50);
	ini_read_string("string","estado","floresta");
	ini_close();
}
