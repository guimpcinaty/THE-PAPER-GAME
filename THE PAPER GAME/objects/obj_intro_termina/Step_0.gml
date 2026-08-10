
if (room == rm_intro){
if (keyboard_check(vk_control)){
	room_goto(room_menu);
}
}else if (room == rm_tutorial){
if (keyboard_check(vk_control)){
	room_goto(room == rm_tutorial);
}
}