//show_debug_message(wait)
image_speed = 3;
//var num_blocks = instance_number(obj_block);
//frames += 1;

//if(frames_inc > frames_bf or num_blocks < 5){
//	if(num_blocks < max_blocks){
//		var new_block = instance_create_layer(
//			random_range(10, room_width-10),
//			random_range(200, room_height - 100),
//			"Instances",
//			obj_block
//		);
//		//with(new_block){
			
//		//}
//	}
//}
if(keyboard_check_pressed(ord("F")) and obj_player.win = false){
	obj_player.fall = false;
	if(!audio_is_playing(time_stop)){
	audio_play_sound(time_stop, 1, 0);
	}

}
if(obj_player.fall = false){
	wait += 1;
	image_speed = 0;
}
if(keyboard_check_pressed(ord("F")) and obj_player.fall = false and wait > 60 and obj_player.win = false){
	obj_player.fall = true;
	wait = 0;
	
}
if(obj_player.fall = true){
y += vert;


vert += grav;




if(vert > max_speed){
	vert = max_speed;
}

//if(y > 2000){
//y = 0;	
//x = random_range(0, room_width);
//vert = 1;
//}

if(instance_place(x, y, obj_ground) or y > 1600){
instance_destroy();	
}

}

if(obj_player.win = true){

}
