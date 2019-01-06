/// @description Insert description here
// You can write your code in this editor

switch (state) {
	case crowState.move:
		if(!instance_exists(o_skeleton))
		{
			break;
		}
	
		if(place_meeting(x,y,o_skeleton) && attacked = false && o_skeleton.state != skeletonState.roll){
			sc_CreateHitbox(x,y,self,sprite_index, knockback_speed, 1, damage, image_xscale);
			attacked = true;
		}
		if(attacked == true) {
			vspeed = -1;
		}
		break;
	
}