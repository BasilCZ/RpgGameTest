audio_stop_all()
switch(room){
	case rm_room:
		play_music = mus_calm
		break
	case rm_battle:
		play_music = mus_megalovania
		break
}

audio_play_sound(play_music,1,true)