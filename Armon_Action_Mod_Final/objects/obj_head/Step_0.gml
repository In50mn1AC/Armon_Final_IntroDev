x = obj_player.x;
y = obj_player.y - 100;

if(instance_place(x,y,obj_block)){
	
	obj_player.respawn();
	//instance_destroy();
	part_particles_create(parts, x, y+50, dust, 100);
}




