function player_attack(){
	var damage = obj_player.attack - obj_battle.enemy.defense
	if(damage < 0){
		damage = 0
	}
	obj_battle.enemy.hp -= damage
}