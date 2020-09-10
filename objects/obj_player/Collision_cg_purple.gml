change_color(ig_purple, og_purple);
global.eyeColor2 = global.e_purple1;
global.eyeColor3 = global.e_purple2;
if !instance_exists(p_spawn_eye) {
	instance_create_depth(room_width/2, room_height/2, 0, p_spawn_eye);
}