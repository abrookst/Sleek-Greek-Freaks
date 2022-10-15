/// @description Insert description here
// You can write your code in this editor

if (!lightningCooldown) {
	hp -= 20;
	lightningCooldown = true;
}

if (hp <= 0) {
	instance_destroy();
}