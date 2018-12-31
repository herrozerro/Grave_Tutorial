/// @description Insert description here
// You can write your code in this editor

switch (state)
{
	case knightState.move:
		#region MoveState
		sc_SetStateSprite(s_knight_walk,0.4,0);
		
		if(!instance_exists(o_skeleton))
		{
			break;
		}
		
		image_xscale = sign(o_skeleton.x-x);
		if(image_xscale == 0)
		{
			image_xscale = 1;
		}
		
		var directionFacing = image_xscale;
		var distToPlayer = point_distance(x,y,o_skeleton.x,o_skeleton.y);
		
		if(distToPlayer <= attackDist)
		{
			state = knightState.attack;
		}
		else
		{
			sc_MoveAndCollide(directionFacing * walkSpeed,0);
		}
		#endregion
		break;
	case knightState.attack:
		#region AttackState
		sc_SetStateSprite(s_knight_attack,0.6,0);
		if(sc_AnimationHitFrame(4))
		{
			sc_CreateHitbox(x,y,self,s_skeleton_attack_one_damage,4,4,10,image_xscale);
		}
		if (sc_AnimationEnd())
		{
			state = knightState.move;
		}
		#endregion
		break;
	case knightState.knockback:
		#region KnockbackState
		sc_SetStateSprite(s_knight_hitstun,0,0);
		sc_MoveAndCollide(knockback_speed,0);
		knockback_speed = lerp(knockback_speed,0,0.1);
		if(knockback_speed < 1){
			knockback_speed = 0;
			state = knightState.move;
		}
		#endregion
		break;
}