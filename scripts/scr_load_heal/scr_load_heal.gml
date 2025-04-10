// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function load_heal(heal_id){
	var file = file_text_open_read("Heals.csv")
	var data = []
	for (var i = 0; i < heal_id + 2; i++) {
	    data = string_split(file_text_readln(file),";")
	}
	heal = instance_create_layer(0,0,"Instances",obj_heal)
	heal.name = data[1]
	heal.description = data[2]
	heal.heal = data[3]
	array_push(obj_player.heals,heal)
	//instance_destroy(heal)
}