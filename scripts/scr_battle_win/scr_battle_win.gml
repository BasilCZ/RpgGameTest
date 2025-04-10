function battle_win(){
	show_debug_message("You won")
	obj_player.xp += obj_battle.enemy.get_xp
	room_goto(obj_player.current_room)
	obj_player.visible = true
	obj_player.can_move = true
}