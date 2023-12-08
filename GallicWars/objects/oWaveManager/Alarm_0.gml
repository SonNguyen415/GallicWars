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
	
	
	// Set number of enemies
	var _num_enemies = 0;
	var _num_inf = 0;
	var _num_archers = 0;
	var _num_cav = 0;
	
	var _num_lvl = [0, 0, 0, 0];
	
	switch(spawn_wave) {
		case 1:
			_num_enemies = 9;
			_num_inf = _num_enemies;
			_num_lvl[0] = _num_enemies;
			break;
			
		case 2:
			_num_enemies = 16;
			_num_inf = irandom_range(8, 12);
			_num_archers = _num_enemies - _num_inf;
			
			// 1/3 are upgraded (5)
			_num_lvl[1] = floor(_num_enemies/3);
			_num_lvl[0] = _num_enemies - _num_lvl[0];
			break;
			
		
		case 3:
			_num_enemies = 25;
			_num_cav = 2;
			_num_inf = irandom_range(16, 20);
			_num_archers = _num_enemies - _num_inf - _num_cav;
			
			
			// 1/2 are upgraded (12)
			_num_lvl[1] = floor(_num_enemies/2);
			_num_lvl[0] = _num_enemies - _num_lvl[0];
			
			break;
			
		case 4:
			_num_enemies = 40/(_k+1);
			_num_cav = 2;
			_num_inf = irandom_range(8, 12);
			_num_archers = _num_enemies - _num_inf - _num_cav;
			
			
			// 1/2 are upgraded (10)
			_num_lvl[2] = 4;
			_num_lvl[1] = floor(_num_enemies/2);
			_num_lvl[0] =  _num_enemies - _num_lvl[2] - _num_lvl[1];
			
			break;
			
		case 5:
			_num_enemies = 50/(_k+1);
			_num_cav = 4;
			_num_inf = irandom_range(8, 12);
			_num_archers = _num_enemies - _num_inf - _num_cav;
			
			
			// 1/2 are upgraded (10)
			_num_lvl[2] = 4;
			_num_lvl[1] = floor(_num_enemies/2);
			_num_lvl[0] = _num_enemies - _num_lvl[2] - _num_lvl[1];
			
			break;
			
		case 6:
			_num_enemies = 75/(_k+1);
			_num_inf = irandom_range(8, 12);
			_num_cav = irandom_range(2, 6);
			_num_archers = _num_enemies - _num_inf - _num_cav;
			
			// 1/2 are upgraded (10)
			_num_lvl[3] = 2;
			_num_lvl[1] = floor(_num_enemies/2);
			_num_lvl[2] = _num_enemies - _num_lvl[3] - _num_lvl[1];
			
			break;
			
		default:
			break;
		
	}
	
	
	var _root_enemies = ceil(sqrt(_num_enemies));

	
	for(var _i=0; _i<_root_enemies; _i++) {
		if(_num_enemies <= 0) {
			break;	
		}
		for(var _j= 0; _j <_root_enemies; _j++) {
			if(_num_enemies <= 0) {
				break;	
			}
			
			var _new_troop = instance_create_layer(_start_pos[0]+_i*32, _start_pos[1]+_j*32, "Instances", oBarb);
			
			// Look for highest count of tier
			var _highest = 0;
			for(var _idx=1; _idx<4; _idx++) {
				if(_num_lvl[_idx] > _num_lvl[_highest]) {
					_highest = _idx;
				}
			}
			
			_new_troop.tier = _highest+1;
			_num_lvl[_highest]--;
			
			
				
			_new_troop.troop_health = GAUL_HP * _new_troop.tier;
			_new_troop.troop_defense = GAUL_DEFENSE * _new_troop.tier;
			_new_troop.troop_attack = GAUL_ATTACK * _new_troop.tier;
			
			
			// Determine troop type. Priority for inf->archer->cav 
			// This will make sure cav is more likely to get higher rank
			if(_num_inf > 0) {
				_new_troop.troop_type = "Infantry";
				_num_inf--;
			} else if(_num_archers > 0) {
				_new_troop.troop_type = "Archer";
				_num_archers--;
			} else if(_num_cav > 0) {
				_new_troop.troop_type = "Cavalry";
				_num_cav--;
				_new_troop.troop_speed *= CAV_SPEED;
			} 
			
			
			_num_enemies--;
			
		}
			
	}
	

	
}


spawn_wave++;

alarm[0] = room_speed * wave_time;


