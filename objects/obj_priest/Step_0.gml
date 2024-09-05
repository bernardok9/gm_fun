/// @description Check enemies

for (var i = 0; i < array_length(obj_priest.min_ranges); i++) {
    with (obj_par_enemy) {
        if (has_enemy_on_range(obj_priest.min_ranges[i], obj_priest.max_ranges[i], obj_priest, id)) {
           show_debug_message("Range: " + string(obj_priest.max_ranges[i]));
		   //towerAttack()
        }
    }
}

for (var i = 0; i < array_length(obj_priest.min_ranges); i++) {
	with (obj_par_enemy) {
		for (var j = 0; j < array_length(obj_priest.attackActivated); j++){
			if (j < array_length(obj_priest.attackActivated)) {
                var cannonball_instance = obj_priest.attackActivated[j];

                if (!instance_exists(cannonball_instance)) {
                    towerShoot(obj_cannonball);
                }
	
                // Agora você tem certeza de que cannonball_instance existe, pode acessar suas propriedades
                if (cannonball_instance.min_range == obj_priest.min_ranges[i]) {
					if (has_enemy_on_range(obj_priest.min_ranges[i], obj_priest.max_ranges[i], obj_priest, id)) {
						//get id do inimigo para atacar
						cannonball_instance.enemy_targeted = obj_par_enemy; //atacar o inimigo
					}
                }
            }
		}
	}
}