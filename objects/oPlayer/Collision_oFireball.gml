 /// @description Insert description here
// You can write your code in this editor

if (!fireballCooldown) {
	hp -= 10;
	fireballCooldown = true;
}

if (hp <= 0) {
	instance_destroy();
}