change_color(ig_purple, og_purple);
global.eyeColor2 = c_purple;
global.eyeColor3 = c_red;
if !instance_exists(p_spawn_eye) {
	instance_create_depth(room_width/2, room_height/2, 0, p_spawn_eye);
}