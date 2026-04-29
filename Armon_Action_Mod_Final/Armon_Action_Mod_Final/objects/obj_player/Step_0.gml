sprite_index = spr_player;

r_y += y_vel;
r_x += x_vel;

var to_move_y = round(r_y);
var to_move_x = round(r_x);

var moving = false;
r_y -= to_move_y;
r_x -= to_move_x;
var dir = sign(to_move_y);
var dirX = sign(to_move_x);

x += to_move_x;
x_vel *= 0.9;
gravA = grav;
y_vel += gravA;
if(keyboard_check(ord("A")) and die = false){
	sprite_index = spr_player_run;
	image_xscale =  -2.5;
	x_vel -= accel;
	//squish_speed = 0.05;
	moving = true
	
}
//else{squish_speed = 0}

if(keyboard_check(ord("D")) and die = false){
	sprite_index = spr_player_run;
	image_xscale = 2.5;
	x_vel += accel;
	//squish_speed = 0.05;
	moving = true;
}

if(keyboard_check_pressed(ord("F")) and win = false){

	part_type_sprite(clock, spr_clock,false, false, false);
	part_type_size(clock, 0.05, 10, 1, 0);
	part_type_speed(clock, 0, 0, 0, 0);
	part_type_direction(clock, 0, 0, 0, 0);
	part_type_alpha2(clock, 1, 0);
	//part_type_color1(dust, #756D54);
	part_type_life(clock, 15, 25);
	part_particles_create(parts, x, y+50, clock, 1);
}
//else{squish_speed = 0}
function respawn(){
	//x = start_x;
	//y = start_y;
	if(!audio_is_playing(time_stop)){
	audio_play_sound(time_stop, 1, 0);
	}
	//die = true;
	fall = false;
	//death_vel = -10
	

	
	die = true
	if(die = true){
		
		y_vel = 10;
		
	}
	
}

if(keyboard_check(ord("T"))){
	//respawn();
		win = true;
}
var dist_to_r_wall = room_width - x - 8;
var dist_to_l_wall = x - 8;


if(to_move_x >= dist_to_r_wall) {
	
	x = room_width - 9;

	x_vel = abs(x_vel) * -1;
	
	r_x = 0;
} else if(to_move_x < -dist_to_l_wall) {
	

	x = 9; 

	x_vel = abs(x_vel);

	r_x = 0;
} else {

	x += to_move_x;
}





while(to_move_y != 0 and win = false){
	var colliding = false;
	var collide_with = noone;
	var collide_with2 = noone;
	collide_with = instance_place(x, y + dir, obj_ground );
	collide_with2 = instance_place(x + dirX, y + dir, obj_block );

		if (place_meeting(x + x_vel, y, obj_block))
{
    while (place_meeting(x + sign(x_vel), y, obj_block))
    {
       
	   x -= sign(x_vel);
    }
	//x -= sign(x_vel);
	x_vel = 0;
}
	if(collide_with != noone or collide_with2 != noone){
		
		if((place_meeting(x, y, collide_with) == false  )){
			colliding = true;
			
			if(die = true){
			fall = false;
			}
			gravA = 0;
			die = false;
			move = 0
			
			//death_vel = 0;
	if(keyboard_check_pressed(vk_space)){
	//sprite_index = spr_jump;
	y_vel = jump_vel;
	part_particles_create(parts, x, y+50, dust, 10);
	audio_play_sound(jump, 1, 0);
	
	
	
}

		}
		if(place_meeting(x, y, collide_with2) == false and die = false){
			colliding = true;
			gravA = 0;
			
			
			if(keyboard_check_pressed(vk_space)){
			//sprite_index = spr_jump;
			y_vel = jump_vel;
			part_particles_create(parts, x, y+ 50, dust, 100);
			audio_play_sound(jump, 1, 0);
}
		}
		
	
}
	
	if(!colliding){
		y += dir;
		to_move_y -= dir;
		if(keyboard_check(ord("A")) and die = false){
			sprite_index = spr_player_run;
			image_xscale =  -2.5;
	
	
		}
//else{squish_speed = 0}

		else if(keyboard_check(ord("D")) and die = false){
			sprite_index = spr_player_run;
			image_xscale = 2.5;
	
		}
		
		else{sprite_index = spr_jump}
		
	//image_index = 1;	
	
		
	}
	else{
	//	y = y + dir;
		//y_vel = jump_vel;
		r_y = 0;
		break;
	}
	
	
}

if(y <= 0){
	win = true;
	
}
function restart(){
	x = start_x;
	y = start_y;
	obj_background.image_index = 1;
	fall = true;
	//obj_block.x = -100;
	sprite_index = spr_player;
	win = false
	stop = false
	gravA = grav;
	y_vel += gravA;
	
}
if(win = true){
	if(!audio_is_playing(shatter) and stop = false){
	audio_play_sound(shatter, 1, 0);
	stop = true;
	}
	fall = false;
	show_debug_message("WINNNN")
	
	
	
	sprite_index = spr_win;
	
	x = 683;
	y = 750;
	
	if(keyboard_check_pressed(ord("R"))){
	restart();	
	}
}



