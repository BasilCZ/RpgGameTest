function battle(){
	room_goto(rm_battle)
	while(obj_player.hp > 0 and obj_enemy.hp > 0){
		//Battle logic
	}
	if(obj_player.hp == 0){
		gameover()
	} else {
		battle_win(obj_enemy.get_xp)
	}
}