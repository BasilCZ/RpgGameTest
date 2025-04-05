//Enemy sprite
/*for(var i = 0;i < array_length(enemies);i++){
	draw_sprite(enemies[i][1],0,683,200)
}*/


x_location = 500
y_location = 500
//Fight items heal and run buttons
draw_sprite(spr_fight,image_indexes[0],x_location,y_location)
draw_sprite(spr_items,image_indexes[1],x_location+300,y_location)
draw_sprite(spr_heal,image_indexes[2],x_location,y_location+100)
draw_sprite(spr_run,image_indexes[3],x_location+300,y_location+100)
	
switch(index){
	case 1:
		//Fight button
		image_indexes = [1,0,0,0]
		break
	case -1:
		//Heal button
		image_indexes = [0,0,1,0]
		break
	case 2:
		//Items button
		image_indexes = [0,1,0,0]
		break
	case -2:
		//Run button
		image_indexes = [0,0,0,1]
		break
}
