if(instance_exists(enemy_targeted)){
	with(obj_par_attack) {
		if (canAttack && enemy_targeted != noone) {
			show_debug_message("Atacou");
			towerShootAttack(attack_damage, enemy_targeted);
			alarm[0] = room_speed * attack_speed;
			canAttack = false;
		}
	}
} else {
	enemy_targeted = noone;
}




