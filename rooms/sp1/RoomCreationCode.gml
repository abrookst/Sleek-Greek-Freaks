global.points1 = 0
global.points2 = 0

player1 = 0
if(global.character1 == 1){
    player1 = instance_create_layer(256, 224, "Instances", oPandora)
}
else if(global.character1 == 2){
    instance_create_layer(256, 224, "Instances", oHercules)
}
else if(global.character1 == 3){
    //instance_create_layer(256, 224, "Instances", oOdysseus)
}
else if(global.character1 == 4){
    //instance_create_layer(256, 224, "Instances", oMedusa)
}
else{
    show_debug_message("INVALID CHARACTER")
}
if player1
	player1.team = 1
if global.mode == 2 {
	player2 = 0;
	if(global.character2 == 1){
	    player2 = instance_create_layer(1120, 224, "Instances", oPandora)
	}
	else if(global.character2 == 2){
	    instance_create_layer(256, 224, "Instances", oHercules)
	}
	else if(global.character2 == 3){
	    //instance_create_layer(256, 224, "Instances", oOdysseus)
	}
	else if(global.character2 == 4){
	    //instance_create_layer(256, 224, "Instances", oMedusa)
	}
	else{
	    show_debug_message("INVALID CHARACTER")
	}
	if player2
		player2.team = 2
}