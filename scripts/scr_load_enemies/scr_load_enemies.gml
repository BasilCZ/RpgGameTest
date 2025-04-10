//https://manual.gamemaker.io/lts/en/GameMaker_Language/GML_Reference/File_Handling/Encoding_And_Hashing/load_csv.htm
function load_enemies(enemy_id){
	var file = file_text_open_read("Enemies.csv")
	var data = []
	for (var i = 0; i < enemy_id + 2; ++i) {
		data = string_split(file_text_readln(file), ";")
	}
	
	var enemy_data = {
		name: data[1],
		attack: data[2],
		defense: data[3],
		hp: data[4],
		//Data na indexu 5 obsahuje novej řádek (\n) proto používám string_trim
		get_xp: real(string_trim(data[5])),
		sprite: spr_enemy
	}
	file_text_close(file)
	return enemy_data
}