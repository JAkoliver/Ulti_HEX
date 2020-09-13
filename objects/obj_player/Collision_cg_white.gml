change_color(ig_white, og_white);
global.eyeColor2 = global.e_white1;
global.eyeColor3 = global.e_white2;
if !instance_exists(p_spawn_eye) {
	instance_create_depth(room_width/2, room_height/2, 0, p_spawn_eye);
}
cg_white.alarm[0] = 1;