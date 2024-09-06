/// @description Check enemies

for (var i = 0; i < array_length(obj_priest.min_ranges); i++) {
	if(instance_exists(obj_par_enemy)) {
	    with (obj_par_enemy) {
	        if (has_enemy_on_range(obj_priest.min_ranges[i], obj_priest.max_ranges[i], obj_priest, id)) {
				if (obj_priest.target == noone && obj_priest.min_ranges[i] == 0 && obj_priest.max_ranges[i] == 45) {
					obj_priest.target = id;
				}
			   show_debug_message("Range: " + string(obj_priest.max_ranges[i]));
	        }
	    }
	}
}

if (obj_priest.target != noone && instance_exists(obj_priest.target)) {
	for (var i = 0; i < array_length(obj_priest.min_ranges); i++) {
	//	for (var j = 0; j < array_length(obj_priest.attackActivated); j++){
	//		if (j < array_length(obj_priest.attackActivated)) {
	            var cannonball_instance = obj_priest.attackActivated[0]; //trocar [0] para J

	            if (!instance_exists(cannonball_instance)) {
	                towerShoot(obj_cannonball);
	            }
	
	            // Agora você tem certeza de que cannonball_instance existe, pode acessar suas propriedades
	            if (cannonball_instance.min_range == obj_priest.min_ranges[i]) {
					if (has_enemy_on_range(obj_priest.min_ranges[i], obj_priest.max_ranges[i], obj_priest, id)) {
						//get id do inimigo para atacar
						cannonball_instance.enemy_targeted = obj_priest.target; //atacar o inimigo
					}
	            }
	//        }
	//	}
		
	}
} else {
	obj_priest.target = noone
}