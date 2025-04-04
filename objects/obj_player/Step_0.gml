var up_key = obj_controls.up
var down_key = obj_controls.down
var left_key = obj_controls.left
var right_key = obj_controls.right

x_speed = (right_key - left_key) * spd
y_speed = (down_key - up_key) * spd

if(obj_controls.run){
	spd = 5
} else {
	spd = 3
}

if(place_meeting(x+x_speed,y,obj_wall)){
	x_speed=0
}
if(place_meeting(x,y+y_speed,obj_wall)){
	y_speed=0
}

if(can_move){	
	x += x_speed
	y += y_speed
}