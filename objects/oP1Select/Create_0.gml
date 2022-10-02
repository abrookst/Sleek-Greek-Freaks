instance_create_layer(0,0,"Instances",oPlayerManager1);
global.lock1 = false;
global.cooldown1 = 0;


if (global.mode == 2) {
	global.lock2 = false;
	global.cooldown2 = 0;
	instance_create_layer(0,0,"Instances",oPlayerManager2);
}