// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function scr_towerControl(){

}

/// @function	enemy_detection(_list, _player, _minRange, _maxRange, _par_enemy)
/// @arg		_list		List To Detect
/// @arg		_player		Player Object
/// @arg		_par_enemy	Enemy Object
/// @arg		_maxRange	Max Radius Range
/// @arg		_minRange	Min Radius Range

/// @description			Return List of index[0] = Enemyid; index[1] = Distance
function enemy_detection(_list, _player, _par_enemy, _maxRange, _minRange = 0){
	with(obj_par_enemy) {
		_enemy_id = id;
		_distance = point_distance(x, y, _player.x, _player.y);
		
		if(_distance < _maxRange && _distance >= _minRange) {
			_entry = ds_list_create();
			ds_list_add(_entry, _enemy_id);
			ds_list_add(_entry, _distance);
			ds_list_add(_list, _entry);
		}	
	}
	
	return _list;
}

/// @function	has_enemy_on_range(_minRange, _maxRange, _objBase, _objEnemy)
/// @arg		_minRange	Min Radius Range
/// @arg		_maxRange	Max Radius Range
/// @arg		_objBase	Base Object (Start Point)
/// @arg		_obj_enemy	Enemy Object (End Point)
/// @description			Return True if enemy has on determined range.
function has_enemy_on_range(_minRange, _maxRange, _objBase, _objEnemy){
	
	with(_objEnemy) {
		_distance = point_distance(x, y, _objBase.x, _objBase.y);	
		return (_distance < _maxRange && _distance >= _minRange);
	}
}


function towerAttack(_damage, _targetObj){
	_targetObj.hp -= _damage;
}

function towerShoot(obj_shoot) {
	instance_create_layer(x, y, "Shooting_Instances", obj_shoot);	
}
