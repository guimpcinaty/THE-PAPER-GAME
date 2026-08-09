if (!ativo) exit;

var _qtd = array_length(alvos);
if (_qtd > 0) {
	for (var i = 0; i < _qtd; i++) {
		var _atual = alvos[i];
		_atual.ativo = true;
	}
}