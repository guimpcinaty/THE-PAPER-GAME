
var saldo = variable_global_get(moeda);
    var meulevel = variable_global_get(varnome);

    // Verifica se pode comprar
        // Subtrai o custo e aumenta o nível
        variable_global_set(moeda, saldo - custo);
        variable_global_set(varnome, meulevel + 1);

var _qtd = array_length(alvos);
if (_qtd > 0) {
	for (var i = 0; i < _qtd; i++) {
		var _atual = alvos[i];
		_atual.ativo = true;
	}
}