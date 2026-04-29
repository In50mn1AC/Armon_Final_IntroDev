
var num_blocks = instance_number(obj_block);
frames_inc += 1;
show_debug_message(frames_inc)

if(frames_inc > frames_bf or num_blocks < 1){
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



