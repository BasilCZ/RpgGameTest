function battle_win(how_much_xp){
	show_debug_message("You won")
	obj_player.xp += how_much_xp
	room_goto(room_last)
}