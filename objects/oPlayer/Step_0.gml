/// @description Apply Velocities
// You can write your code in this editor

input_dir = keyboard_check(vk_right) - keyboard_check(vk_left);
if (input_dir != 0){
	image_xscale = -input_dir;
}
input_jump = keyboard_check(vk_space);

global.onGround = place_meeting(x, y+1, oBarrier);
global.touchLeft = place_meeting(x-1, y, oBarrier);
global.touchRight = place_meeting(x+1, y, oBarrier);

if global.onGround {
	global.yVelocity = 0;
	coyote_time = 0;
	
	global.xVelocity = input_dir * runSpeed;
} else {
	coyote_time += 1;
	global.yVelocity += grav;
	if global.touchLeft or global.touchRight {
		if global.yVelocity > 2 {
			global.yVelocity = 2;
		}
	}
	
	if input_dir < 0 {
		if global.xVelocity > -runSpeed {
			global.xVelocity = max(global.xVelocity - 0.7, -runSpeed);
		}
	} else if input_dir > 0 {
		if global.xVelocity < runSpeed {
			global.xVelocity = min(global.xVelocity + 0.7, runSpeed);
		}
	}
}

if input_jump and coyote_time < 6 {
	show_debug_message(coyote_time)
	global.yVelocity = -12;
	coyote_time += 10;
}

if place_meeting(x, y+global.yVelocity, oBarrier){
	while !place_meeting(x, y+sign(global.yVelocity), oBarrier){
		y += sign(global.yVelocity);
	}
	global.yVelocity = 0;
}
if place_meeting(x+global.xVelocity, y, oBarrier){
	while !place_meeting(x+sign(global.xVelocity), y, oBarrier){
		x += sign(global.xVelocity);
	}
	global.xVelocity = 0;
}

x += global.xVelocity;
y += global.yVelocity;

global.onGround = false;
global.touchLeft = false;
global.touchRight = false;