//Create player managers, locks + cooldowns for char select, and coords to move arrows to

//instance_create_layer(0,0,"Instances",oPlayerManager1);
global.character1 = 1;
global.lock1 = false;
global.cooldown1 = 0;

global.x11 = 480;
global.y11 = 290;
global.x12 = 860;
global.y12 = 290;
global.x13 = 480;
global.y13 = 575;
global.x14 = 865;
global.y14 = 575;
instance_create_layer(global.x11,global.y11,"Arrows",oArrow1);
oArrow1.image_xscale = .5;
oArrow1.image_yscale = .5;
oArrow1.depth = 1;

if (global.mode == 2) {
	//instance_create_layer(0,0,"Instances",oPlayerManager2);
	global.character2 = 1;
	global.lock2 = false;
	global.cooldown2 = 0;
	
	global.x21 = 610;
	global.y21 = 290;
	global.x22 = 990;
	global.y22 = 290;
	global.x23 = 610;
	global.y23 = 575;
	global.x24 = 995;
	global.y24 = 575;
	instance_create_layer(global.x21,global.y21,"Arrows",oArrow2);
	oArrow2.image_xscale = .5;
	oArrow2.image_yscale = .5;
}