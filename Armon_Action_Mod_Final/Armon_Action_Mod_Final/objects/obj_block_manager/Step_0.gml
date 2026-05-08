if(obj_tut.start = true){
var num_blocks = instance_number(obj_block);
var num_blocks2 = instance_number(obj_block2);
var num_blocks3 = instance_number(obj_block2);
frames_inc += 1;
frames_inc2 += 1;
frames_inc3 += 1;
//show_debug_message(frames_inc)

if((frames_inc > frames_bf or num_blocks < 1) and obj_player.fall = true){
	if(num_blocks < max_blocks){
		var new_block = instance_create_layer(
			random_range(10, room_width-10),
			-75,
			"Instances",
			obj_block
		);
		with(new_block){
			var tries = 0;	
				while(tries < 3000 && collision_rectangle(
				x-100, y-100,
				x+30, y+30,
				obj_block,
				false, true) != noone){
					x = random_range(10, room_width -10);
					y = -75
					tries += 1;
				}
			}
	}
	frames_inc = 0;
}

if((frames_inc2 > frames_bf2 or num_blocks2 < 1) and obj_player.fall = true){
	if(num_blocks2 < max_blocks2){
		var new_blocks2 = instance_create_layer(
			random_range(10, room_width-10),
			-125,
			"Instances",
			obj_block2
		);
		with(new_blocks2){
			var tries = 0;	
				while(tries < 3000 && collision_rectangle(
				x-100, y-100,
				x+30, y+30,
				obj_block2,
				false, true) != noone){
					x = random_range(10, room_width -10);
					y = -75
					tries += 1;
				}
			}
	}
	frames_inc2 = 0;
}
}
//if((frames_inc3 > frames_bf3 or num_blocks3 < 1) and obj_player.fall = false){
//	if(num_blocks3 < max_blocks3){
//		var new_blocks3 = instance_create_layer(
//			random_range(10, room_width-10),
//			-125,
//			"Instances",
//			obj_block3
//		);
//		with(new_blocks3){
//			var tries = 0;	
//				while(tries < 3000 && collision_rectangle(
//				x-100, y-100,
//				x+30, y+30,
//				obj_block3,
//				false, true) != noone){
//					x = random_range(10, room_width -10);
//					y = -75
//					tries += 1;
//				}
//			}
//	}
//	frames_inc3 = 0;
//}
//}


