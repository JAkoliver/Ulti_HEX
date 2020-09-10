change_color(ig_blue, og_blue);
global.eyeColor2 = c_blue;
global.eyeColor3 = c_purple;
if !instance_exists(p_spawn_eye) {
	instance_create_depth(room_width/2, room_height/2, 0, p_spawn_eye);
}