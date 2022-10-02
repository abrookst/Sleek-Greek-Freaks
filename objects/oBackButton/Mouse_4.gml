/// @description Insert description here
// You can write your code in this editor

if (room_get_name(room) != "StageSelect") {
	room_goto(TitleScreen);
} else {
	room_goto(CharSelect);
}