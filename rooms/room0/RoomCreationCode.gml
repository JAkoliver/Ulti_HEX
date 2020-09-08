global.playerScale = .5;
global.gemScale = .9;

instance_create_depth(room_width/2, room_height/2, 0, obj_camera);
instance_create_depth(room_width/2, room_height/2, -1, obj_player);
//instance_create_depth(room_width/2, room_height/2, -1, border_bg);
//instance_create_depth(room_width/2, room_height/2, 0, circle_bg);
instance_create_depth(room_width/2, room_height/2, 99, inner_circle_bg);
instance_create_depth(room_width/2, room_height/2, 0, cg_blue);
instance_create_depth(room_width/2, room_height/2, 0, cg_green);
instance_create_depth(room_width/2, room_height/2, 0, cg_purple);
instance_create_depth(room_width/2, room_height/2, 0, cg_red);
instance_create_depth(room_width/2, room_height/2, 0, cg_white);
instance_create_depth(room_width/2, room_height/2, 0, cg_yellow);

obj_player.image_xscale = global.playerScale;
obj_player.image_yscale = global.playerScale;
cg_blue.image_xscale = global.gemScale;
cg_green.image_xscale = global.gemScale;
cg_purple.image_xscale = global.gemScale;
cg_red.image_xscale = global.gemScale;
cg_white.image_xscale = global.gemScale;
cg_yellow.image_xscale = global.gemScale;
cg_blue.image_yscale = global.gemScale;
cg_green.image_yscale = global.gemScale;
cg_purple.image_yscale = global.gemScale;
cg_red.image_yscale = global.gemScale;
cg_white.image_yscale = global.gemScale;
cg_yellow.image_yscale = global.gemScale;

script_execute(partical_system);