/// @description Insert description here
// You can write your code in this editor


var _num_dir = 1;



// Set number of directions army will come from
if(spawn_wave >= 1 && spawn_wave <= 3) {
	_num_dir = 1;
} else if(spawn_wave >=4 && spawn_wave <=5) {
	_num_dir = 2;
} else {
	_num_dir = 3;
}


// Get random direction. 
var _initial_dir = irandom(2);

// Do for each direction
for(var _k=0; _k<_num_dir; _k++) {
	
	
	var _start_dir = (_initial_dir+_k) % _num_dir;
	
	

	var _start_pos = [0, 0];
	
	if(spawn_wave < 3) {
		if(start_exclude == 0) {
		_start_dir++;
		} else if(start_exclude == 1 && _start_dir == 1) {
			_start_dir++;
		} 
	}
	
	


	// Get some variation in starting position of enemy troops
	for(var _i=0; _i<2; _i++) {
		var _pos_variation = random_range(-start_variation, start_variation);
		_start_pos[_i] = start_variables[_start_dir][_i] + _pos_variation;

	}
	
	var _sq_root_enemies = 0;
	
	if(spawn_wave == 1) {
		_sq_root_enemies = 3;	
	} else if(spawn_wave == 2) {
		_sq_root_enemies = 4;	
	} else if(spawn_wave == 3 || spawn_wave == 4) {
		_sq_root_enemies = 5;	
	} else if(spawn_wave == 5) {
		_sq_root_enemies = 6;	
	} else if(spawn_wave == 6) {
		_sq_root_enemies = 7;	
		
	}
	
	for(var _i=0; _i<_sq_root_enemies; _i++) {
		for(var _j= 0; _j <_sq_root_enemies; _j++) {
			new_troop = instance_create_layer(_start_pos[0]+_i*32, _start_pos[1]+_j*32, "Instances", oBarb);
			new_troop.tier = 1;
			new_troop.troop_health = 50 * new_troop.tier;
			new_troop.troop_defense = 4 * new_troop.tier;
			new_troop.troop_attack = 8 * new_troop.tier;
			new_troop.troop_type = "Infantry";
		}
			
	}
	
	
}

	

spawn_wave++;

alarm[0] = room_speed * 10;


