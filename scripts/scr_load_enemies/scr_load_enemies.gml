//https://manual.gamemaker.io/lts/en/GameMaker_Language/GML_Reference/File_Handling/Encoding_And_Hashing/load_csv.htm
function load_enemies(enemy_id){
	var file = file_text_open_read("Enemies.csv")
	var data = []
	for (var i = 0; i < enemy_id + 2; ++i) {
		data = string_split(file_text_readln(file), ";")
	}
	var enemy = instance_create_layer(0,0,0,obj_enemy)
	
	enemy.name = data[1]
	enemy.attack = data[2]
	enemy.defense = data[3]
	enemy.hp = data[4]
	//Data na indexu 5 obsahuje novej řádek (\n) proto používám string_trim
	enemy.get_xp = real(string_trim(data[5]))
	file_text_close(file)
	return enemy
}