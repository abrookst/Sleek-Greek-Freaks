/// @description Insert description here
// You can write your code in this editor
hp = 100;
if(team == 1){
	oPlayerManager2.points++;
}
else{
	oPlayerManager1.points++;
}
switch(room){
	case stage1: instance_create_layer(600, 224, "Instances", oPlayer); break;
	case stage2: instance_create_layer(600, 224, "Instances", oPlayer); break;
	case stage3: instance_create_layer(1024, 288, "Instances", oPlayer); break;
}
