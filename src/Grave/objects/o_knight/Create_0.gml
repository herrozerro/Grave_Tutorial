/// @description Insert description here
// You can write your code in this editor
event_inherited();

enum knightState {
	move,
	attack,
	hit,
	knockback
}

attackDist = 42;
walkSpeed = 1;
state = knightState.move
knockbackFriction = 0.75;
attackKnockback = 2;