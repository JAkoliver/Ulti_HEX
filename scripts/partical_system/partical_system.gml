global.p_system = part_system_create();
global.p_emitter = part_emitter_create(global.p_system);
global.p_type = part_type_create();

global.p_system_eye = part_system_create();
global.p_emitter_eye = part_emitter_create(global.p_system_eye);
global.p_type_eye = part_type_create();

global.eyeColor1 = c_black;
global.eyeColor2 = c_gray;
global.eyeColor3 = c_black;
global.thrusterColor1 = c_black;
global.thrusterColor2 = c_gray;

script_execute(eye_colors);

part_system_depth(global.p_system,1);
part_system_depth(global.p_system_eye,99);

part_type_sprite(global.p_type,pt_shape_pixel,false,false,false);
//part_type_sprite(global.p_type,global.p_sprite,true,false,false);
part_type_alpha3(global.p_type,0,.3,0);
//part_type_color3(global.p_type,c_white,c_yellow,c_red);
part_type_color2(global.p_type,global.thrusterColor1,global.thrusterColor2);
part_type_life(global.p_type,game_get_speed(gamespeed_fps)/5,game_get_speed(gamespeed_fps)/2);
part_type_scale(global.p_type,.25,.25);
part_type_orientation(global.p_type,0,360,0,0,false);

//part_type_sprite(global.p_type_eye,pt_shape_circle,true,false,false);
//part_type_direction(global.p_type_eye,0,359,1.5,0);
//part_type_life(global.p_type_eye,game_get_speed(gamespeed_fps)*5,game_get_speed(gamespeed_fps)*10);
//part_type_speed(global.p_type_eye,10,13.5,+.05,0);
//part_type_scale(global.p_type_eye,.2,.2);
//part_type_alpha3(global.p_type_eye,1,.75,.5);
//part_type_color3(global.p_type_eye,global.eyeColor1,global.eyeColor2,global.eyeColor3);

part_type_sprite(global.p_type_eye,pt_shape_sphere,true,false,false);
part_type_direction(global.p_type_eye,0,359,5,0);
part_type_life(global.p_type_eye,game_get_speed(gamespeed_fps)*15,game_get_speed(gamespeed_fps)*15);
part_type_speed(global.p_type_eye,15,15,+.03,0);
part_type_scale(global.p_type_eye,.1,.1);
part_type_alpha3(global.p_type_eye,1,1,1);
part_type_color3(global.p_type_eye,global.eyeColor1,global.eyeColor2,global.eyeColor3);