if (global.selectedP1 == 4 && global.cooldown1 <= 0) {
	if (keyboard_check_pressed(ord("N")) && !global.lock1) {
		global.lock1 = true;
		global.cooldown1 = 10;
	}
	if (keyboard_check_pressed(ord("M")) && global.lock1) {
		global.lock1 = false;
		global.cooldown1 = 10;
	}
	if (keyboard_check_pressed(vk_up) && !global.lock1) {
		global.selectedP1 = 3;
		global.cooldown1 = 10;
	}
	if (keyboard_check_pressed(vk_down) && !global.lock1) {
		global.selectedP1 = 1;
		global.cooldown1 = 10;
	}
}

if (global.selectedP2 == 4 && global.cooldown2 <= 0) {
	if (keyboard_check_pressed(ord("Q")) && !global.lock2) {
		global.lock2 = true;
		global.cooldown2 = 10;
	}
	if (keyboard_check_pressed(ord("E")) && global.lock2) {
		global.lock2 = false;
		global.cooldown2 = 10;
	}
	if (keyboard_check_pressed(ord("W")) && !global.lock2) {
		global.selectedP2 = 3;
		global.cooldown2 = 10;
	}
	if (keyboard_check_pressed(ord("S")) && !global.lock2) {
		global.selectedP2 = 1;
		global.cooldown2 = 10;
	}
}

global.cooldown1--;
global.cooldown2--;