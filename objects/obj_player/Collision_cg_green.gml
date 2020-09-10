change_color(ig_green, og_green);
global.eyeColor2 = c_green;
global.eyeColor3 = c_blue;
if !instance_exists(p_spawn_eye) {
	instance_create_depth(room_width/2, room_height/2, 0, p_spawn_eye);
}