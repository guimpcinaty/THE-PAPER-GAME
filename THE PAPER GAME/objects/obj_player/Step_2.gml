
var _colx = instance_place(x,y,obj_chao)

if (_colx) {
	if (velh > 0){
		x = _colx.bbox_left + (x - bbox_right)
	}
	if (velh < 0){
		x = _colx.bbox_right + (x - bbox_left)
	}
	velh = 0
}
x	+=	velh
var _coly = instance_place(x,y + velv,obj_chao)

if (_coly) {
	if (velv > 0){
		y = _coly.bbox_top + (y - bbox_bottom)
	}
	if (velv < 0){
		y = _coly.bbox_bottom + (y - bbox_top)
	}
	velv = 0
}

y	+=	velv