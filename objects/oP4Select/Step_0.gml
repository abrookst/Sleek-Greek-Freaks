if (global.selectedP1 == 4 && global.cooldown1 <= 0) {
	if (keyboard_check_pressed(vk_up)) {
		global.selectedP1 = 3;
		global.cooldown1 = 10;
	}
	if (keyboard_check_pressed(vk_down)) {
		global.selectedP1 = 1;
		global.cooldown1 = 10;
	}
}

if (global.selectedP2 == 4 && global.cooldown2 <= 0) {
	if (keyboard_check_pressed(ord("W"))) {
		global.selectedP2 = 3;
		global.cooldown2 = 10;
	}
	if (keyboard_check_pressed(ord("S"))) {
		global.selectedP2 = 1;
		global.cooldown2 = 10;
	}
}

global.cooldown1--;
global.cooldown2--;