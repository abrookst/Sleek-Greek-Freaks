/// @description Insert description here
// You can write your code in this editor
if(team == 1){
	draw_self()
	draw_sprite(sprArrowP1, 0, x, y-180)
}
else{
	draw_self()
	draw_sprite(sprArrowp2, 0, x, y-180)
}

var pc;
pc = (hp / max_hp) * 100;

if team == 1 {
	if (room_get_name(room) != "TitleScreen" && room_get_name(room) != "Controls" && room_get_name(room) != "CharSelect") {
		draw_healthbar(31, 31, 191, 62, pc, c_black, c_red, c_lime, 0, true, true)
	}
	draw_set_colour(c_red);
	draw_set_font(fScore)
	draw_text(211, 46, global.points1);
}
else {
	if (room_get_name(room) != "TitleScreen" && room_get_name(room) != "Controls" && room_get_name(room) != "CharSelect") {
		draw_healthbar(1031, 31, 1191, 62, pc, c_black, c_red, c_lime, 0, true, true)
	}
	draw_set_colour(c_red);
	draw_set_font(fScore)
	draw_text(1211, 46, global.points2);
}

