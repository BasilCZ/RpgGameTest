function battle(enemy_id){
	room_goto(rm_battle)
	global.enemy = load_enemies(enemy_id)
}