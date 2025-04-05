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