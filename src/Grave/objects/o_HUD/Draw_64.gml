/// @description Insert description here

var hp_x = 8;
var hp_y = 8;
var hp_width = 198;
var hp_height = 6;
if (instance_exists(o_skeleton)) {
//For making it animate the bar
	draw_hp = lerp(draw_hp,o_skeleton.hp,0.2);
	draw_max_hp = o_skeleton.maxHp;
} else {
	draw_hp = lerp(draw_hp,0,0.2);
}

var hp_percent = draw_hp / draw_max_hp;

draw_rectangle_color(hp_x, hp_y, hp_x + (hp_width * hp_percent), hp_y + hp_height,
						c_white, c_white, c_white, c_white, false);

draw_line_width_color(hp_x -1, hp_y -1, hp_x + (hp_width), hp_y -1, 1, c_dkgray, c_dkgray);
draw_line_width_color(hp_x -1, hp_y + hp_height, hp_x + (hp_width), hp_y + hp_height, 1, c_dkgray, c_dkgray);
draw_line_width_color(hp_x -1, hp_y -1, hp_x -1, hp_y + hp_height, 1, c_dkgray, c_dkgray);
draw_line_width_color(hp_x + hp_width, hp_y -1, hp_x + hp_width, hp_y + hp_height, 1, c_dkgray, c_dkgray);

//draw_rectangle_color(hp_x -1, hp_y -1, hp_x + (hp_width) + 1, hp_y + hp_height + 1, c_dkgray, c_dkgray, c_dkgray, c_dkgray, true);

if (!instance_exists(o_skeleton)) exit;

var text = "Kills: " + string(o_skeleton.kills);
var textWidth = string_width(text);
var textHeight = string_height(text);
var start_x = 8;
var start_y = 20;
var padding_x = 6;
var padding_y = 4;

draw_rectangle_color(start_x, start_y, start_x + textWidth + padding_x, start_y + textHeight + padding_y, c_dkgray, c_dkgray, c_dkgray, c_dkgray, false);
draw_text(start_x + padding_x / 2, start_y + padding_y / 2, text);


text = "Level: " + string(o_skeleton.level);
var start_x = textWidth + padding_x * 3;
textWidth = string_width(text);
textHeight = string_height(text);

draw_rectangle_color(start_x, start_y, start_x + textWidth + padding_x, start_y + textHeight + padding_y, c_dkgray, c_dkgray, c_dkgray, c_dkgray, false);
draw_text(start_x + padding_x / 2, start_y + padding_y / 2, text);