
with(obj_par_attack) {
	if (canAttack && enemy_targeted != noone) {
		show_debug_message("Atacou");
		towerAttack(attack_damage, enemy_targeted);
		alarm[0] = room_speed * attack_speed;
		canAttack = false;
	}
}

