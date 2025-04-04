function battle_win(how_much_xp){
	obj_player.xp += how_much_xp
	room_goto(room_last)
}