/// @description Insert description here
// You can write your code in this editor
if(hp <= 0)
{
	instance_destroy();
	if(instance_id != o_skeleton){
		if(instance_exists(o_skeleton)){
			o_skeleton.kills += 1;
		}
	}
}