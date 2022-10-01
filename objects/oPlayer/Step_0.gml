/// @description Apply Velocities
// You can write your code in this editor

global.onGround = place_meeting(x, y+1, oBarrier);
global.touchLeft = place_meeting(x-1, y, oBarrier);
global.touchRight = place_meeting(x+1, y, oBarrier);

if global.onGround {
	global.yVelocity = 0;
	if keyboard_check(vk_space){
		global.yVelocity = -12;
	}
	
	if keyboard_check(vk_left) {
		global.xVelocity = -xSpeed;
	} else if keyboard_check(vk_right) {
		global.xVelocity = xSpeed;
	} else {
		global.xVelocity = 0;
	}
} else {
	if not global.touchLeft {
		global.yVelocity += 0.5;
	} else {
		global.yVelocity = 2;
	}
	
	if keyboard_check(vk_left) {
		if global.xVelocity > -xSpeed {
			global.xVelocity = max(global.xVelocity - 0.7, -xSpeed);
		}
	} else if keyboard_check(vk_right) {
		if global.xVelocity < xSpeed {
			global.xVelocity = min(global.xVelocity + 0.7, xSpeed);
		}
	}
}

if place_meeting(x, y+global.yVelocity, oBarrier){
	global.yVelocity = 0;
}
if place_meeting(x+global.xVelocity, y, oBarrier){
	global.xVelocity = 0;
}

x += global.xVelocity;
y += global.yVelocity;

global.onGround = false;
global.touchLeft = false;
global.touchRight = false;