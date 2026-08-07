function scr_consequencia(_id1,_id2,_idc){
	global.alteracoes++;
	var n = irandom_range(_id1,_id2)
	if (n == _id1) {
		var positive = _idc + _id1
		var negative = _idc - _id1
		_idc = irandom_range(positive,negative)
	}
	if (_idc == _id2) {
		var positive = _idc + _id2
		var negative = _idc - _id2
		_idc = irandom_range(positive,negative)
	}
}