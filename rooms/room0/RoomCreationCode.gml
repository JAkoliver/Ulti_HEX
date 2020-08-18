global.playerScale = .4;

instance_create_depth(room_width/2, room_height/2, 0, obj_camera);
instance_create_depth(room_width/2, room_height/2, 0, obj_player);
instance_create_depth(0, 0, 0, border_bg);

obj_player.image_xscale = global.playerScale;
obj_player.image_yscale = global.playerScale;
