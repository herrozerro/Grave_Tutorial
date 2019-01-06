/// @description Insert description here

if (! instance_exists(o_skeleton)) exit;

var hp_x = 8;
var hp_y = 8;
var hp_width = 198;
var hp_height = 6;

//For making it animate the bar
draw_hp = lerp(draw_hp,o_skeleton.hp,0.1);

var hp_percent = draw_hp / o_skeleton.maxHp;

draw_rectangle_color(hp_x, hp_y, hp_x + (hp_width * hp_percent), hp_y + hp_height,
						c_white, c_white, c_white, c_white, false);