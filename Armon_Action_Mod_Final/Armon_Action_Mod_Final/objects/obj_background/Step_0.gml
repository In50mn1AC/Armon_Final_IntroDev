sprite_index = spr_backTut;
wait++

if(wait >= 40 and sprite_index = spr_backTut){
		sprite_index = spr_backTut2;
}

if(obj_tut.start = true){
	image_index = 0;
	sprite_index = spr_background;
}
if(obj_player.fall = false){
image_index = 1;
sprite_index = spr_background;
}

if(obj_player.win = true){
 sprite_index = spr_background3;	
}
