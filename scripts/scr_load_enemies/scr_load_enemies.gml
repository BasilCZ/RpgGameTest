//https://manual.gamemaker.io/lts/en/GameMaker_Language/GML_Reference/File_Handling/Encoding_And_Hashing/load_csv.htm
function load_enemies(enemy_id){
	var file = file_text_open_read("Enemies.csv")
	var data = []
	for (var i = 0; i < enemy_id + 2; ++i) {
		data = string_split(file_text_readln(file), ";")
	}
	obj_enemy.name = data[1]
	obj_enemy.attack = data[2]
	obj_enemy.defense = data[3]
	obj_enemy.hp = data[4]
	obj_enemy.get_xp = data[5]
	file_text_close(file)
}