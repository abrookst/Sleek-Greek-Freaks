/// @description Apply Velocities
// You can write your code in this editor


if global.onGround {
	global.yVelocity = 0;
	if keyboard_check(vk_space){
		global.yVelocity = 10;
	}
	
	if keyboard_check(vk_left) {
		global.xVelocity = -5;
	} else if keyboard_check(vk_right) {
		global.xVelocity = 5;
	} else {
		global.xVelocity = 0;
	}
} else {
	global.yVelocity -= 0.5;
	
	if keyboard_check(vk_left) {
		if global.xVelocity > -5 {
			global.xVelocity -= 0.5;
		}
	} else if keyboard_check(vk_right) {
		if global.xVelocity < 5 {
			global.xVelocity += 0.5;
		}
	}
}

x += global.xVelocity;
y -= global.yVelocity;

global.onGround = false;