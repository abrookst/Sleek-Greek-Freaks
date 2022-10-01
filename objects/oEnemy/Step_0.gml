/// @description Insert description here
// You can write your code in this editor

input_jump = false;
attack_input = false;

if(touchLeft or touchRight){
	input_jump = true;
}
if(distance_to_object(oPlayer) < 30){
	input_dir = -oPlayer.input_dir
	attack_input = true;
	sprite_index = sprWater;
}
else{
	sprite_index = sprEnemy;
}
if !stunned {
		sprite_index = sprEnemy;
}
if(oPlayer.input_dir == 0 or oPlayer.y != oEnemy.y){
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

if(distance_to_object(oEdge) < 20){
	input_dir = -input_dir;
}

// Inherit the parent event
event_inherited();

//if above player, move left or right
//if to left, move left, if to the right, move right
