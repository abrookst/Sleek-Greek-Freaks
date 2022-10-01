if (global.selectedP1 == 1 && global.cooldown1 <= 0) {
	if (keyboard_check_pressed(vk_up)) {
		global.selectedP1 = 4;
		global.cooldown1 = 10;
	}
	if (keyboard_check_pressed(vk_down)) {
		global.selectedP1 = 2;
		global.cooldown1 = 10;
	}
}

if (global.selectedP2 == 1 && global.cooldown2 <= 0) {
	if (keyboard_check_pressed(ord("W"))) {
		global.selectedP2 = 4;
		global.cooldown2 = 10;
	}
	if (keyboard_check_pressed(ord("S"))) {
		global.selectedP2 = 2;
		global.cooldown2 = 10;
	}
}

show_debug_message(string(global.selectedP1) + " " + string(global.selectedP2));
show_debug_message(string(global.cooldown1) + " " + string(global.cooldown2));

global.cooldown1--;
global.cooldown2--;