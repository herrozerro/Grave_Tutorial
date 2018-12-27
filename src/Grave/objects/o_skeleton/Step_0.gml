/// @description Insert description here
// You can write your code in this editor

switch state 
{
	case skeletonState.move:
		#region moveCode
		
		if (input.right)
		{
			sc_MoveAndCollide(runSpeed,0);
			image_xscale = 1;
			sc_SetStateSprite(s_skeleton_run, 0.6, 0);
			image_speed = 0.6;
		}

		if (input.left)
		{
			sc_MoveAndCollide(-runSpeed,0);
			image_xscale = -1;
			sc_SetStateSprite(s_skeleton_run, 0.6, 0);
			image_speed = 0.6;
		}

		if (!input.right && !input.left)
		{
			sc_SetStateSprite(s_skeleton_idle, 0.4, 0);
		}
		
		if (input.attack)
		{
			state = skeletonState.attackOne;
		}
		
		if (input.roll)
		{
			state = skeletonState.roll;
		}
		
		
		#endregion
		break;
	case skeletonState.roll:
		#region rollCode
		
		sc_SetStateSprite(s_skeleton_roll, 0.6, 0);
		
		if (image_xscale > 0)
		{
			sc_MoveAndCollide(rollspeed,0);
		}
		
		if (image_xscale < 0)
		{
			sc_MoveAndCollide(-rollspeed,0);
		}
		
		if (sc_AnimationEnd())
		{
			state = skeletonState.move;
		}
		
		#endregion
		break;
	case skeletonState.attackOne:
		#region attackOneCode
		sc_SetStateSprite(s_skeleton_attack_one, 0.6, 0);
		
		if(sc_AnimationHitFrame(0))
		{
			sc_CreateHitbox(x,y,self,s_skeleton_attack_one_damage,4,4,5,image_xscale);
		}
		
		if (input.attack && sc_AnimHitRange(2,4))
		{
			state = skeletonState.attackTwo
		}
		if (sc_AnimationEnd())
		{
			state = skeletonState.move;
		}
		#endregion
		break;
	case skeletonState.attackTwo:
		#region attackTwoCode
		sc_SetStateSprite(s_skeleton_attack_two, 0.6, 0);
		if(sc_AnimationHitFrame(1))
		{
			sc_CreateHitbox(x,y,self,s_skeleton_attack_two_damage,4,4,5,image_xscale);
		}
		if (input.attack && sc_AnimHitRange(2,4))
		{
			state = skeletonState.attackThree
		}
		if (sc_AnimationEnd())
		{
			state = skeletonState.move;
		}
		#endregion
		break;
	case skeletonState.attackThree:
		#region attackThreeCode
		sc_SetStateSprite(s_skeleton_attack_three, 0.6, 0);
		if(sc_AnimationHitFrame(2))
		{
			sc_CreateHitbox(x,y,self,s_skeleton_attack_three_damage,4,4,8,image_xscale);
		}
		if (sc_AnimationEnd())
		{
			state = skeletonState.move;
		}
		#endregion
		break;
}
