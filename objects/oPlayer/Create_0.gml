/// @description Insert description here
// You can write your code in this editor

//if (global.attackChanged) {
//	show_debug_message("Giving back attack boost");
//	global.attackMultiplier1 *= 2;
//	global.attackMultiplier2 *= 2;
//	global.attackChanged = true;
//}
show_debug_message("CREATED");
if (global.speedChanged) {
	show_debug_message("Giving back speed boost");
	runSpeed *= 2;
	//global.speedChanged = true;
}
if (global.allChanged) {
	show_debug_message("Giving back all boost");
	//global.attackMultiplier1 *= 1.5;
	//global.attackMultiplier2 *= 1.5;
	runSpeed *= 1.5;
	jumpForce *= 1.5;
	wallJumpUpForce *= 1.5;
	grav /= 1.5;
	xKnockback *= 1.5;
	yKnockback *= 1.5;
	//global.allChanged = false;
}