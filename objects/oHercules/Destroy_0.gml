/// @description Insert description here
// You can write your code in this editor

event_inherited();

if(team == 1){
	switch(room){
		case stage1: respawnedPlayer = instance_create_layer(256, 224, "Instances", oHercules); break;
		case stage2: respawnedPlayer = instance_create_layer(192, 224, "Instances", oHercules); break;
		case stage3: respawnedPlayer = instance_create_layer(1024, 288, "Instances", oHercules); break;
		case stage4: respawnedPlayer = instance_create_layer(85, 245, "Instances", oHercules); break;
		case sp1: respawnedPlayer = instance_create_layer(256, 224, "Instances", oHercules); break;
		case sp2: respawnedPlayer = instance_create_layer(192, 224, "Instances", oHercules); break;
		case sp3: respawnedPlayer = instance_create_layer(1024, 288, "Instances", oHercules); break;
		case sp4: respawnedPlayer = instance_create_layer(85, 245, "Instances", oHercules); break;
	}
}
else{
	switch(room){
		case stage1: respawnedPlayer = instance_create_layer(1120, 224, "Instances", oHercules); break;
		case stage2: respawnedPlayer = instance_create_layer(1184, 224, "Instances", oHercules); break;
		case stage3: respawnedPlayer = instance_create_layer(416, 488, "Instances", oHercules); break;
		case stage4: respawnedPlayer = instance_create_layer(85, 245, "Instances", oHercules); break;
	}
}

respawnedPlayer.team = team;