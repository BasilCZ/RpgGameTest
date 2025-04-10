function battle(enemy_id){
	obj_player.current_room = room
	room_goto(rm_battle)
	global.enemy_data = load_enemies(enemy_id)
}