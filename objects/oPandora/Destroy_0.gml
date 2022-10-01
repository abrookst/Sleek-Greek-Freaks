/// @description Insert description here
// You can write your code in this editor

if(team == 1){
	switch(room){
		case stage1: respawnedPlayer = instance_create_layer(256, 224, "Instances", oPandora);
		case stage2: respawnedPlayer = instance_create_layer(192, 224, "Instances", oPandora);
	}
}
else{
	switch(room){
		case stage1: respawnedPlayer = instance_create_layer(1120, 224, "Instances", oPandora);
		case stage2: respawnedPlayer = instance_create_layer(1184, 224, "Instances", oPandora);
	}
}

respawnedPlayer.team = team;