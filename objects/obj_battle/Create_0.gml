can_run = true
player_attacked = false
player_attacking = false
wait = false

x_location = 0
y_location = 0
index = 1
image_indexes = [0,0,0,0]

enemy = instance_create_layer(720,320,"Instances",obj_enemy)
enemy.name = global.enemy_data.name
enemy.attack = global.enemy_data.attack
enemy.defense = global.enemy_data.defense
enemy.hp = global.enemy_data.hp
enemy.max_hp = global.enemy_data.max_hp
enemy.get_xp = global.enemy_data.get_xp
enemy.sprite_index = global.enemy_data.sprite

obj_player.visible = false
obj_player.can_move = false