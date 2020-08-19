// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function change_color(gem_color, thruster_color){
	if shipGem != gem_color {
	instance_destroy(shipGem);
	shipGem = gem_color;
	instance_create_depth(x,y,-1,shipGem);
	shipGem.image_xscale = global.playerScale;
	shipGem.image_yscale = global.playerScale;
	shipGem.image_angle = image_angle;
	}

	if shipThruster != thruster_color {
	instance_destroy(shipThruster);
	shipThruster = thruster_color;
	instance_create_depth(x,y,-1,shipThruster);
	shipThruster.image_xscale = global.playerScale;
	shipThruster.image_yscale = global.playerScale;
	shipThruster.image_angle = image_angle;
	}
}