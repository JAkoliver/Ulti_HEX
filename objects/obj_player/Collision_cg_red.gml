change_color(ig_red, og_red);
global.eyeColor2 = c_red;
global.eyeColor3 = c_orange;
if !instance_exists(p_spawn_eye) {
	instance_create_depth(room_width/2, room_height/2, 0, p_spawn_eye);
}