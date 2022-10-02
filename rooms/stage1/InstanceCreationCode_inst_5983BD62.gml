if(character == 1){
	player = instance_create_layer(1120, 224, "Instances", oPandora);
}
else if(character == 2){
	//instance_create_layer(256, 224, "Instances", oHerculues)
}
else if(character == 3){
	//instance_create_layer(256, 224, "Instances", oOdysseus)
}
else if(character == 4){
	//instance_create_layer(256, 224, "Instances", oMedusa)
}
else{
	show_debug_message("INVALID CHARACTER")
}
player.team = 2
