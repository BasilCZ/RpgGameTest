function battle(enemy_id){
	room_goto(rm_battle)
	var enemy = load_enemies(enemy_id)
	while(obj_player.hp > 0 and enemy.hp > 0){
		//Battle logic
		
	}
	if(obj_player.hp == 0){
		gameover()
	} else {
		battle_win(enemy.get_xp)
	}
}