//Hráč je na řadě
if(!player_attacked){
	//Pohyb výběru
	if((obj_controls.menu_up or obj_controls.menu_down) and !player_attacking){
		index *= -1
	}
	if(obj_controls.menu_left and !player_attacking){
		if(index == -2 or index == 2){
			index /= 2
		} else {
			index *= 2
		}
	}
	if(obj_controls.menu_right and !player_attacking){
		if(index == 1 or index == -1){
			index *= 2
		} else {
			index /= 2
		}
	}
	//show_debug_message(index)

	//Výběr voleb
	if(obj_controls.confirm){
		//Hráč začíná útok
		if(index == 1 and !player_attacking){
			enemy.image_index = 1
			//Poznámka: while loopy zastavují player input
			player_attacking = true
			alarm[0] = 1*room_speed
		}
	
		//Hráč útočí
		if(player_attacking and wait){
			player_attack()
			player_attacking = false
			player_attacked = true
			wait = false
			enemy.image_index = 0
		}
	
		//Únik
		if(index == -2 and can_run){
			instance_destroy(enemy)
			can_run = true
			x_location = 0
			y_location = 0
			index = 1
			image_indexes = [0,0,0,0]
			room_goto(rm_room)
			obj_player.visible = true
			obj_player.can_move = true
		}
	}

	//Hráč zrušil útok
	if(player_attacking and obj_controls.back){
		//Zruší alarm
		alarm[0] = -1
		player_attacking = false
		enemy.image_index = 0
	}
//Enemák je na řadě	
} else {
	enemy_attack()
	player_attacked = false
}


//Konec boje
if(obj_player.hp == 0){
	gameover()
}
if(instance_exists(enemy) and enemy.hp == 0){
	battle_win()
}