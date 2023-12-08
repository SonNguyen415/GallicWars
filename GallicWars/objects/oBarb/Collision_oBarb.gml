if (target == noone && other.target == noone && dead == false) {
	move_towards_point(other.x, other.y, -troop_speed);
} else {
	speed = 0;	
}