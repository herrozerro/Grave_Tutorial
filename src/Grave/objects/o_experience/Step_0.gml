/// @description Insert description here
// You can write your code in this editor
if(!instance_exists(o_skeleton)) exit;

var dir = point_direction(x,y,o_skeleton.x, o_skeleton.y);
var acc = 0.25;
motion_add(dir, acc);
var max_speed = 6;

if (speed > max_speed){
	speed = max_speed;	
}