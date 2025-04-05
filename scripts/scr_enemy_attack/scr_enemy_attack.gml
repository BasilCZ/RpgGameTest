function enemy_attack(enemy){
	var damage = enemy.attack - obj_player.defense
	if(damage < 0){
		damage = 0
	}
	obj_player.hp -= damage
}