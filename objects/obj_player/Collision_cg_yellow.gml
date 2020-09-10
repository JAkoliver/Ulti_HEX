change_color(ig_yellow, og_yellow);
global.eyeColor2 = c_yellow;
global.eyeColor3 = c_green;
if !instance_exists(p_spawn_eye) {
	instance_create_depth(room_width/2, room_height/2, 0, p_spawn_eye);
}