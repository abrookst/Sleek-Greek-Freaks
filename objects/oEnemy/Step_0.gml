/// @description Insert description here
// You can write your code in this editor

input_jump = false;
attack_input = false;
input_down = false;
//attack
if(distance_to_object(oPlayer) < 30){
	input_dir = -oPlayer.input_dir
	attack_input = true;
	sprite_index = sprWater;
}
else{
	sprite_index = sprEnemy;
}
//stunsprite
if !stunned {
		sprite_index = sprEnemy;
}
//check for edge
if(distance_to_object(oEdge) < 200){
	input_dir = -input_dir
	input_jump = true;
}
//walljump
else if(touchLeft or touchRight){
	input_jump = true;
	input_dir = -input_dir
}
else if(oPlayer.input_dir == 0 or oPlayer.y != oEnemy.y){
	if(step == 5){
		rando = random_range(0,1000)
		if(rando < 250){
			input_dir = 1
		}
		else if(rando < 500){
			input_dir = -1;
		}
		else if(rando < 750){
			input_jump = true;
		}
		else{
			input_dir = 0;	
		}
		step = 0
	}
	else{
		step++
	}

}
else if(distance_to_object(oPlayer) < 300){
	if(oPlayer.x < x){
		input_dir = -1;
	}
	else{
		input_dir = 1;
	}

}

// Inherit the parent event
event_inherited();
