global.playerScale = .4;

instance_create_depth(room_width/2, room_height/2, 0, obj_camera);
instance_create_depth(room_width/2, room_height/2, 0, obj_player);
instance_create_depth(0, 0, 0, border_bg);
instance_create_depth(0, 0, 0, circle_bg);
instance_create_depth(room_width/2, room_height/2, 0, inner_circle_bg);
instance_create_depth(room_width/2, room_height/2, 0, cg_blue);
instance_create_depth(room_width/2, room_height/2, 0, cg_green);
instance_create_depth(room_width/2, room_height/2, 0, cg_purple);
instance_create_depth(room_width/2, room_height/2, 0, cg_red);
instance_create_depth(room_width/2, room_height/2, 0, cg_white);
instance_create_depth(room_width/2, room_height/2, 0, cg_yellow);

obj_player.image_xscale = global.playerScale;
obj_player.image_yscale = global.playerScale;
