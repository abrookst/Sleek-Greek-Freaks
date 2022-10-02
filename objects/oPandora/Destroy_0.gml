/// @description Insert description here
// You can write your code in this editor

if(team == 1){
	switch(room){
		case stage1: respawnedPlayer = instance_create_layer(256, 224, "Instances", oPandora); break;
		case stage2: respawnedPlayer = instance_create_layer(192, 224, "Instances", oPandora); break;
		case stage3: respawnedPlayer = instance_create_layer(1024, 288, "Instances", oPandora); break;
	}
}
else{
	switch(room){
		case stage1: respawnedPlayer = instance_create_layer(1120, 224, "Instances", oPandora); break;
		case stage2: respawnedPlayer = instance_create_layer(1184, 224, "Instances", oPandora); break;
		case stage3: respawnedPlayer = instance_create_layer(416, 488, "Instances", oPandora); break;
	}
}

respawnedPlayer.team = team;