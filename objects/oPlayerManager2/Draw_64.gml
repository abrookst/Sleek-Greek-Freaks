/// @description Insert description here
// You can write your code in this editor
var pc;
pc = (cur_hp / max_hp) * 100;
draw_healthbar(1343, 31, 1182, 62, pc, c_black, c_red, c_lime, 0, true, true)
draw_set_colour(c_red);
draw_text(1162, 62, points);



