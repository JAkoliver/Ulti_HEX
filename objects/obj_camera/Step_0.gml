//Move Speed for Objects

global.move_speed = 700;
var seconds_passed = delta_time/1000000;
global.move_speed_this_frame = global.move_speed*seconds_passed;

//Follow Target

if (instance_exists(target)) {
	global.cameraX = target.x - (cameraWidth/2);
	global.cameraY = target.y - (cameraHeight/2);
}

camera_set_view_pos(view_camera[0], global.cameraX, global.cameraY);

layer_x(bg1, global.cameraX*.5);
layer_y(bg1, global.cameraY*.5);
layer_x(bg0, global.cameraX*.7);
layer_y(bg0, global.cameraY*.7);
layer_x(bg2, global.cameraX*.9);
layer_y(bg2, global.cameraY*.9);