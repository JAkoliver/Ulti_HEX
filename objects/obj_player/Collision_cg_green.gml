change_color(ig_green, og_green);
global.eyeColor2 = global.e_green1;
global.eyeColor3 = global.e_green2;
global.thrusterColor1 = global.e_green1;
global.thrusterColor2 = global.e_green2;
part_type_color2(global.p_type,global.thrusterColor1,global.thrusterColor2);
if !instance_exists(p_spawn_eye) {
	instance_create_depth(room_width/2, room_height/2, 0, p_spawn_eye);
}
cg_green.alarm[0] = 1;