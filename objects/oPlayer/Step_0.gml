/// @description Apply Velocities
// You can write your code in this editor

//global.onGround = place_meeting(x, y+1, oBarrier);

if global.onGround {
	global.yVelocity = 0;
	if keyboard_check(vk_space){
		global.yVelocity = 12;
	}
	
	if keyboard_check(vk_left) && not global.touchLeft {
		global.xVelocity = -xSpeed;
	} else if keyboard_check(vk_right) {
		global.xVelocity = xSpeed;
	} else {
		global.xVelocity = 0;
	}
} else {
	global.yVelocity -= 0.5;
	
	if keyboard_check(vk_left) && not global.touchLeft {
		if global.xVelocity > -xSpeed {
			global.xVelocity = max(global.xVelocity - 0.7, -xSpeed);
		}
	} else if keyboard_check(vk_right) {
		if global.xVelocity < xSpeed {
			global.xVelocity = min(global.xVelocity + 0.7, xSpeed);
		}
	}
}

x += global.xVelocity;
y -= global.yVelocity;

global.onGround = false;
global.touchLeft = false;
global.touchRight = false;