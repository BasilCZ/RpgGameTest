function battle(enemy_id){
	room_goto(rm_battle)
	load_enemies(enemy_id)
	while(obj_player.hp > 0 and obj_enemy.hp > 0){
		//Battle logic
	}
	if(obj_player.hp == 0){
		gameover()
	} else {
		battle_win(obj_enemy.get_xp)
	}
}