function scr_consequencia(_id1, _id2, _idc) {
    global.alteracoes += 1;

    var n = choose(_id1, _id2);

    var lower_bound = _idc - abs(n);
    var upper_bound = _idc + abs(n);

    if (lower_bound > upper_bound) {
        var temp = lower_bound;
        lower_bound = upper_bound;
        upper_bound = temp;
    }

    var resultado = irandom_range(lower_bound, upper_bound);
	
    return resultado;
}
