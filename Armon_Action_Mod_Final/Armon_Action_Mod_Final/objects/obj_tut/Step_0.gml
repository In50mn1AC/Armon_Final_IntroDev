if(keyboard_check_pressed(vk_space) and start = false){
	image_index += 1;
	obj_background.wait = 0;
	obj_background.sprite_index = spr_backTut;
	
}

if(image_index = 6){
	start = true;
	visible = false;
}



