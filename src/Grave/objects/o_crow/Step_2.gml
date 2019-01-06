/// @description Insert description here
// You can write your code in this editor
if (hp <= 0) {
	instance_destroy();

	if(instance_exists(o_skeleton)){
		o_skeleton.kills += 1;
	}

	repeat (experience)	{
		instance_create_layer(x + random_range(-4,4), y + random_range(-4,4), "Effects", o_experience);
	}
}