if (!ativo) exit;

var _mouse_sobre = place_meeting(mouse_x, mouse_y, id);

if (_mouse_sobre) {
	image_xscale = 2;
	image_yscale = 2;
} else {
	image_xscale = 1;
	image_yscale = 1;
}