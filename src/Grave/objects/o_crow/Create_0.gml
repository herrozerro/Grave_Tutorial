event_inherited();

enum crowState {
	move,
	death
}

hp = 1;
maxHp = hp;

state = crowState.move;

image_speed = 0.2;
hspeed = random_range(1,2);

if (instance_exists(o_skeleton)){
	hspeed *= sign(o_skeleton.x - x);
}
image_xscale = sign(hspeed);

damage = 5;
attacked = false;

experience = 2;
knockback_speed = 4;