if (global.cooldown1 <= 0) {
	if (keyboard_check_pressed(ord("N")) && !global.lock1) {
		global.lock1 = true;
		global.cooldown1 = 10;
	}
	if (keyboard_check_pressed(ord("M")) && global.lock1) {
		global.lock1 = false;
		global.cooldown1 = 10;
	}
	if (keyboard_check_pressed(vk_up) && !global.lock1) {
		oPlayerManager1.character = 1;
		global.cooldown1 = 10;
		oArrow1.x = global.x11;
		oArrow1.y = global.y11;
	}
	if (keyboard_check_pressed(vk_right) && !global.lock1) {
		oPlayerManager1.character = 2;
		global.cooldown1 = 10;
		oArrow1.x = global.x12;
		oArrow1.y = global.y12;
	}
	if (keyboard_check_pressed(vk_down) && !global.lock1) {
		oPlayerManager1.character = 3;
		global.cooldown1 = 10;
		oArrow1.x = global.x13;
		oArrow1.y = global.y13;
	}
	if (keyboard_check_pressed(vk_left) && !global.lock1) {
		oPlayerManager1.character = 4;
		global.cooldown1 = 10;
		oArrow1.x = global.x14;
		oArrow1.y = global.y14;
	}
}

global.cooldown1--;
//show_debug_message("P1: " + string(oPlayerManager1.character) + ", Cooldown: " + string(global.cooldown1));

if (global.mode == 2) {
	if (global.cooldown2 <= 0) {
		if (keyboard_check_pressed(ord("Q")) && !global.lock2) {
			global.lock2 = true;
			global.cooldown2 = 10;
		}
		if (keyboard_check_pressed(ord("E")) && global.lock2) {
			global.lock2 = false;
			global.cooldown2 = 10;
		}
		if (keyboard_check_pressed(ord("W")) && !global.lock2) {
			oPlayerManager2.character = 1;
			global.cooldown2 = 10;
			oArrow2.x = global.x21;
			oArrow2.y = global.y21;
		}
		if (keyboard_check_pressed(ord("D")) && !global.lock2) {
			oPlayerManager2.character = 2;
			global.cooldown2 = 10;
			oArrow2.x = global.x22;
			oArrow2.y = global.y22;
		}
		if (keyboard_check_pressed(ord("S")) && !global.lock2) {
			oPlayerManager2.character = 3;
			global.cooldown2 = 10;
			oArrow2.x = global.x23;
			oArrow2.y = global.y23;
		}
		if (keyboard_check_pressed(ord("A")) && !global.lock2) {
			oPlayerManager2.character = 4;
			global.cooldown2 = 10;
			oArrow2.x = global.x24;
			oArrow2.y = global.y24;
		}
	}
	global.cooldown2--;
	//show_debug_message("P2: " + string(oPlayerManager2.character) + ", Cooldown: " + string(global.cooldown2));
}