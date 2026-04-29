fall = true;
shake_screen = 5;
sprite_index = spr_player;

die = false;
win = false;
stop = false;
start_x = 500//50
start_y = 200//1200
x = start_x;
y = start_y;

move = 0;
gravA = 0;
death_vel = 0;

parts = part_system_create();

part_system_depth(parts, 30);
clock = part_type_create();
dust = part_type_create();
part_type_sprite(dust, spr_clock,false, false, false);
part_type_shape(dust, pt_shape_square);
part_type_size(dust, 0.05, 0.1, 0, 0);
part_type_speed(dust, 0.7, 5, 0, 0);
part_type_direction(dust, 0, 360, 0, 100);
part_type_alpha2(dust, 1, 0);
part_type_color1(dust, #756D54);
part_type_life(dust, 15, 25);
