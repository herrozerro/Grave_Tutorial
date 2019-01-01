/// @description Insert description here
// You can write your code in this editor
event_inherited();
image_speed = 0.4;

enum skeletonState {
	move,
	roll,
	attackOne,
	attackTwo,
	attackThree,
	knockback
}

state = skeletonState.move;
//multiAttack = false;
runSpeed = 4;
rollspeed = 6;

attackOneKnockback = 4;
attackTwoKnockback = 4;
attackThreeKnockback = 6;

knockbackFriction = 0.3;

input = instance_create_layer(0,0,"Instances",o_input);