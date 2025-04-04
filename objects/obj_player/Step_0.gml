var up_key = obj_controls.up
var down_key = obj_controls.down
var left_key = obj_controls.left
var right_key = obj_controls.right

if(obj_controls.run){
	spd = 5
} else {
	spd = 3
}

x_speed = (right_key - left_key) * spd
y_speed = (down_key - up_key) * spd

if(can_move){	
	x += x_speed
	y += y_speed
}