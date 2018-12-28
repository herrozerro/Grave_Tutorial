/// @description Insert description here
// You can write your code in this editor
if(creator == noone || creator == other || ds_list_find_index(hit_objects, other) != -1)
{
	exit;
}

other.hp -= damage;
show_debug_message(other.hp);
ds_list_add(hit_objects, other);