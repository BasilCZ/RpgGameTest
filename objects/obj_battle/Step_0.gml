//Pohyb výběru
if(obj_controls.menu_up or obj_controls.menu_down){
	index *= -1
}
if(obj_controls.menu_left){
	if(index == -2 or index == 2){
		index /= 2
	} else {
		index *= 2
	}
}
if(obj_controls.menu_right){
	if(index == 1 or index == -1){
		index *= 2
	} else {
		index /= 2
	}
}
show_debug_message(index)
//Výběr voleb

//Únik
if(index == -2 and obj_controls.confirm){
	instance_destroy(enemy)
	can_run = true
	x_location = 0
	y_location = 0
	index = 1
	image_indexes = [0,0,0,0]
	room_goto(rm_room)
	obj_player.visible = true
	obj_player.can_move = true
}