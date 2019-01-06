/// @description Insert description here
// You can write your code in this editor

if(!instance_exists(other)) exit;

var dir = point_direction(other.x, other.y, x, y);
var acc = 0.5;
motion_add(dir, acc);