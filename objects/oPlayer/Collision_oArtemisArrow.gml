/// @description Insert description here
// You can write your code in this editor

if (!arrowCooldown) {
	hp -= 7;
	arrowCooldown = true;
}

if (hp <= 0) {
	instance_destroy();
}