global.p_system = part_system_create();
global.p_emitter = part_emitter_create(global.p_system);
global.p_type = part_type_create();

//global.p_sprite = thruster_partical;

part_system_depth(global.p_system,1);

part_type_sprite(global.p_type,pt_shape_pixel,false,false,false);
//part_type_sprite(global.p_type,global.p_sprite,true,false,false);
part_type_alpha3(global.p_type,0,.3,0);
//part_type_color3(global.p_type,c_white,c_yellow,c_red);
part_type_color1(global.p_type,c_blue);
part_type_life(global.p_type,game_get_speed(gamespeed_fps)/5,game_get_speed(gamespeed_fps)/2);
part_type_scale(global.p_type,.3,.3);
part_type_orientation(global.p_type,0,360,0,0,false);