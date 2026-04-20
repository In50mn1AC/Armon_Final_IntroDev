parts = part_system_create();

part_system_depth(parts, 30);

dust = part_type_create();
part_type_sprite(dust, spr_clock,false, false, false);
//part_type_shape(dust, obj_clock);
part_type_size(dust, 1, 1, 0, 0);
part_type_speed(dust, 0.5, 20, 0, 0);
part_type_direction(dust, 0, 360, 0, 0);
part_type_alpha2(dust, 1, 0);
//part_type_color1(dust, #FF0000);
part_type_life(dust, 5, 30);
