var move_xinput = 0;
var move_yinput = 0;
 
for ( var i = 0; i < array_length_1d(movement_inputs); i++){
    var this_key = movement_inputs[i];
    if keyboard_check(this_key) {
        var this_angle = i*90;
        move_xinput += lengthdir_x(1, this_angle);
        move_yinput += lengthdir_y(1, this_angle);
    }
}
 
var moving = ( point_distance(0,0,move_xinput,move_yinput) > 0 );
if moving  {
    var move_dir = point_direction(0,0,move_xinput,move_yinput);
	Point_dir = move_dir;
    move(global.move_speed_this_frame,move_dir);
	if (Point_dir == 0 || 45 || 90 || 135 || 180 || 225 || 270 || 315) && (Point_dir != image_angle) {
		image_angle += .1;
		if instance_exists(shipThruster) {
			shipThruster.image_angle += .1;
		}
		if instance_exists(shipGem) {
			shipGem.image_angle += .1;
		}
	}
	Is_Rotating = 1;
	part_emitter_region(global.p_system,global.p_emitter,x,x,y,y,ps_shape_rectangle,ps_distr_linear);
	part_emitter_burst(global.p_system,global.p_emitter,global.p_type,1);
}

if (Is_Rotating == 1) {
	image_angle += sin(degtorad(Point_dir - image_angle))*rspeed;
	if instance_exists(shipThruster) {
		shipThruster.image_angle += sin(degtorad(Point_dir - shipThruster.image_angle))*rspeed;
	}
	if instance_exists(shipGem) {
		shipGem.image_angle += sin(degtorad(Point_dir - shipGem.image_angle))*rspeed;
	}
}