//Create player managers, locks + cooldowns for char select, and coords to move arrows to

//instance_create_layer(0,0,"Instances",oPlayerManager1);
global.character1 = 1;
global.lock1 = false;
global.cooldown1 = 0;

global.x11 = 640;
global.y11 = 192;
global.x12 = 1090;
global.y12 = 416;
global.x13 = 640;
global.y13 = 672;
global.x14 = 160;
global.y14 = 416;
instance_create_layer(global.x11,global.y11,"Arrows",oArrow1);
oArrow1.image_xscale = .5;
oArrow1.image_yscale = .5;
oArrow1.depth = 1;

if (global.mode == 2) {
	distance = 128; //distance between arrow1 and arrow2
	//instance_create_layer(0,0,"Instances",oPlayerManager2);
	global.character2 = 1;
	global.lock2 = false;
	global.cooldown2 = 0;
	
	global.x21 = global.x11 + distance;
	global.y21 = global.y11;
	global.x22 = global.x12 + distance;
	global.y22 = global.y12;
	global.x23 = global.x13 + distance;
	global.y23 = global.y13;
	global.x24 = global.x14 + distance;
	global.y24 = global.y14;
	instance_create_layer(global.x21,global.y21,"Arrows",oArrow2);
	oArrow2.image_xscale = .5;
	oArrow2.image_yscale = .5;
}