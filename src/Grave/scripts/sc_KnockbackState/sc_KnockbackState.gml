///@arg knockback_sprite
///@arg next_state

var knockback_sprite = argument0;
var next_state = argument1;

sc_SetStateSprite(knockback_sprite,0,0);
		image_xscale = -sign(knockback_speed);
		sc_MoveAndCollide(knockback_speed,0);
		knockback_speed = sc_Approach(knockback_speed,0,knockbackFriction);
		if(knockback_speed == 0){
			//if(object_index == o_skeleton){
			//	state = skeletonState.move;
			//}else if (object_index == o_knight){
			//	state = knightState.move;
			//}
			state = next_state;
		}