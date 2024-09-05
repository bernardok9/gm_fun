/// @description

// Distance and direction to player;
directionToPlayer = point_direction(x, y, playerX, playerY);
distanceToPlayer = point_distance(x, y, playerX, playerY);

// Need change direction of Sprite here.


// Move to tower and stop in range.
if (distanceToPlayer > monster_range) {
	moveX = lengthdir_x(monster_speed, directionToPlayer);
	moveY = lengthdir_y(monster_speed, directionToPlayer);
	
	x += moveX;
	y += moveY;
}

// Anyway, if monster come to proximity, he will go back... Can change that.
//if (distanceToPlayer < monster_range) {
//	moveX = lengthdir_x(monster_speed, directionToPlayer);	
//	moveY = lengthdir_y(monster_speed, directionToPlayer);	

//	x -= moveX;
//	y -= moveY;
//}

// Depth auto-ajust
depth = -y;