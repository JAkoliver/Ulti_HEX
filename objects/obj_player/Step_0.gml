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
		image_angle += .1
		outer_gem.image_angle += .1
		inner_gem.image_angle += .1
	}
	Is_Rotating = 1;
}

if (Is_Rotating == 1) {
	image_angle += sin(degtorad(Point_dir - image_angle))*rspeed;
	outer_gem.image_angle += sin(degtorad(Point_dir - outer_gem.image_angle))*rspeed;
	inner_gem.image_angle += sin(degtorad(Point_dir - outer_gem.image_angle))*rspeed;
}