function player_attack(enemy){
	var damage = obj_player.attack - enemy.defense
	if(damage < 0){
		damage = 0
	}
	enemy.hp -= damage
}