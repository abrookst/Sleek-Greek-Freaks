//Create player managers, locks + cooldowns for char select, and coords to move arrows to

//instance_create_layer(0,0,"Instances",oPlayerManager1);
global.character1 = 1;
global.lock1 = false;
global.cooldown1 = 0;

global.x11 = 640;
global.y11 = 192;
global.x12 = 864;
global.y12 = 416;
global.x13 = 640;
global.y13 = 640;
global.x14 = 416;
global.y14 = 416;
instance_create_layer(global.x11,global.y11,"Arrows",oArrow1);
oArrow1.image_xscale = .5;
oArrow1.image_yscale = .5;
oArrow1.depth = 1;

if (global.mode == 2) {
	//instance_create_layer(0,0,"Instances",oPlayerManager2);
	global.character2 = 1;
	global.lock2 = false;
	global.cooldown2 = 0;
	
	global.x21 = 768;
	global.y21 = 192;
	global.x22 = 992;
	global.y22 = 416;
	global.x23 = 768;
	global.y23 = 640;
	global.x24 = 544;
	global.y24 = 416;
	instance_create_layer(global.x21,global.y21,"Arrows",oArrow2);
	oArrow2.image_xscale = .5;
	oArrow2.image_yscale = .5;
}