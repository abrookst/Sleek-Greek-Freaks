/// @description Insert description here
// You can write your code in this editor

input_jump = false;
attack_input = false;
input_down = false;

//if close to edge, move
if(distance_to_object(oEdge) < 200){
	if(input_dir = 1){
		input_dir = -1;
	}
	else{
		input_dir = 1;
	}
}
//if on wall, jump in opposite direction regardless
else if(touchLeft or touchRight){
	input_jump = true;
	input_dir = -input_dir;
}
//pick a random direction/action
else{
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

if(distance_to_object(oPlayer) < 40){
	attack_input = true;
	sprite_index = sprObstacle
}
else{
	sprite_index = sprEnemy
}
	

// Inherit the parent event
event_inherited();

//if above player, move left or right
//if to left, move left, if to the right, move right