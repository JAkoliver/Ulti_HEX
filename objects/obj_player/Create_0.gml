instance_create_depth(x,y,-1,outer_gem);
instance_create_depth(x,y,-1,inner_gem);

outer_gem.image_xscale = global.playerScale;
outer_gem.image_yscale = global.playerScale;
inner_gem.image_xscale = global.playerScale;
inner_gem.image_yscale = global.playerScale;

movement_inputs[0] = ord("D");
movement_inputs[1] = ord("W");
movement_inputs[2] = ord("A");
movement_inputs[3] = ord("S");

rspeed = 10; //the speed of rotation, how fast it rotates
Point_dir = 0; //the variable that will store what direction to rotate to
Is_Rotating = 0; //is it rotating, used in the STEP event to rotate the object