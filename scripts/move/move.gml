/// @arg speed
/// @arg direction
function move(argument0, argument1) {
 
	var spd = argument0;
	var dir = argument1;
 
	var xtarg = x+lengthdir_x(spd,dir);
	var ytarg = y+lengthdir_y(spd,dir);
	var p_xtarg = p_spawn.x+lengthdir_x(spd,dir);
	var p_ytarg = p_spawn.y+lengthdir_y(spd,dir);
 
	if place_free(xtarg,ytarg) {
	    x = xtarg;
	    y = ytarg;
		if instance_exists(shipThruster) {
			shipThruster.x = xtarg;
			shipThruster.y = ytarg;
		}
		if instance_exists(shipGem) {
			shipGem.x = xtarg;
			shipGem.y = ytarg;
		}
		if instance_exists(p_spawn) {
			p_spawn.x = p_xtarg;
			p_spawn.y = p_ytarg;
		}
	}
	else {
	    var sweep_interval = 10;
    
	    for ( var angle = sweep_interval; angle <= 80; angle += sweep_interval) {
	        for ( var multiplier = -1; multiplier <= 1; multiplier += 2) {      
	            var angle_to_check = dir+angle*multiplier;
	            xtarg = x+lengthdir_x(spd, angle_to_check);
	            ytarg = y+lengthdir_y(spd, angle_to_check);     
	            if place_free(xtarg,ytarg) {
	                x = xtarg;
	                y = ytarg; 
					if instance_exists(shipThruster) {
						shipThruster.x = xtarg;
						shipThruster.y = ytarg;
					}
					if instance_exists(shipGem) {
						shipGem.x = xtarg;
						shipGem.y = ytarg;
					}
					if instance_exists(p_spawn) {
						p_spawn.x = p_xtarg;
						p_spawn.y = p_ytarg;
					}
	                exit;       
	            }   
	        }
	    }
	}


}
