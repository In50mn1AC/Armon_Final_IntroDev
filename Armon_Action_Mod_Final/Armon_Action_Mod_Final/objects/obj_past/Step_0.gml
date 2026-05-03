//if(x != obj_player.x){
//	x = lerp(x, obj_player.x, 0.01)
//}

//if (array_length(history) > max_history) {
//    array_delete(history, 0, 1);
//}

//if (array_length(obj_player.history) > 0) {
//    var index = 0; // oldest position = ~5 seconds ago
//    var past = obj_player.history[index];

//    x = past[0];
//    y = past[1];
	
//}


image_alpha = 0.6;
if (instance_exists(target)) {
    var hist = target.history;

    if (array_length(hist) > rewind_frames) {
        var frame = hist[array_length(hist) - rewind_frames];

        x = frame.x;
        y = frame.y;
		image_xscale = frame.image_xscale;
        sprite_index = frame.sprite;
        image_index = frame.image_index;
		
    }
}
if (keyboard_check_pressed(ord("L"))){
	var hist = target.history;
	var frame = hist[array_length(hist) - rewind_frames];
	//rewind_frames = room_speed * 2;
	
}
else{
	//rewind_frames = room_speed * 1;
}
//show_debug_message(x);

