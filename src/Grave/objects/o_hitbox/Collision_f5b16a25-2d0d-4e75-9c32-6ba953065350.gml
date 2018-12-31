/// @description Insert description here
// You can write your code in this editor
if(creator == noone || creator == other || ds_list_find_index(hit_objects, other) != -1)
{
	exit;
}

other.hp -= damage;
show_debug_message(other.hp);
ds_list_add(hit_objects, other);

var oName = object_get_name(other.object_index);

if (oName == "o_knight")
{
	show_debug_message("Knight Knockback");
	other.state = knightState.knockback;	
}
else if (oName == "o_skeketon")
{
	show_debug_message("Skeleton knockback");
	other.state = skeletonState.knockback;	
}

other.knockback_speed = knockback;