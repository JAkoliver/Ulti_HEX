change_color(ig_white, og_white);
global.eyeColor2 = c_white;
global.eyeColor3 = c_gray;
if !instance_exists(p_spawn_eye) {
	instance_create_depth(room_width/2, room_height/2, 0, p_spawn_eye);
}