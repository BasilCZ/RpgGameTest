//Zajistí aby enemákova hp nemohla jít pod 0 hp
if(hp < 0){
	hp = 0
}

//Zajistí aby enemákova hp nebyla větší než jeho max
if(hp > max_hp){
	hp = max_hp
}