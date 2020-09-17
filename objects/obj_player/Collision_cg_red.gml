change_color(ig_red, og_red);
global.eyeColor2 = global.e_red1;
global.eyeColor3 = global.e_red2;
global.thrusterColor1 = global.e_red1;
global.thrusterColor2 = global.e_red2;
part_type_color2(global.p_type,global.thrusterColor1,global.thrusterColor2);
if !instance_exists(p_spawn_eye) {
	instance_create_depth(room_width/2, room_height/2, 0, p_spawn_eye);
}
cg_red.alarm[0] = 1;