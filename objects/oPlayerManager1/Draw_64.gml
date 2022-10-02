/// @description Insert description here
// You can write your code in this editor
var pc;
pc = (cur_hp / max_hp) * 100;

if (room_get_name(room) != "TitleScreen" && room_get_name(room) != "Controls" && room_get_name(room) != "CharSelect") {
	draw_healthbar(31, 31, 191, 62, pc, c_black, c_red, c_lime, 0, true, true)
}
draw_set_colour(c_red);
draw_set_font(fScore)
draw_text(211, 46, points);


