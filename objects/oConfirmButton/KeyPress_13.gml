/// @description Insert description here
// You can write your code in this editor


//This button should only be in charselect
if (global.lock1) {
	if (global.mode == 2) {
		if (global.lock2) {
			room_goto(StageSelect);
		}
	} else {
		room_goto(sp1);
	}
}