function battle(enemy_id){
	room_goto(rm_battle)
	obj_battle.enemy = load_enemies(enemy_id)
}