//sec += 1;

//if(sec >= 60){
//image_angle -= 1;	
//sec = 0;
//}
if(obj_tut.start = true){
image_angle -= move;
visible = true;
}
if(obj_player.fall = false){
move = 0;	
image_index = 1;
}
if(obj_player.win = true){
	image_index = 2;
		visible = false;
}

if(obj_player.fall = true){ 
	image_index = 0;
	move = 0.05;
}

if(obj_player.rewind = true){
	move = -0.05;	
}