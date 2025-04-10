function enemy_attack(){
	var damage = obj_battle.enemy.attack - obj_player.defense
	if(damage < 0){
		damage = 0
	}
	obj_player.hp -= damage
}