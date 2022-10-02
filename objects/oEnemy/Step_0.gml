/// @description Insert description here
// You can write your code in this editor

input_jump = false;
attack_input = false;
input_down = false;

//if on wall, jump in opposite direction regardless
if(touchLeft or touchRight){
	input_jump = true;
	input_dir = -input_dir;
}

nearestEdge = instance_nearest(x,y,oEdge);
if(abs(x-nearestEdge.x) < 5){
	if x < 700{
		input_dir = 1;
	}
	else{
		input_dir = -1;
	}
}
//if close to edge, move
else if(step >= 25){
	
	//pick a random direction/action
			rando = random_range(0,1000)
			if(rando < 500){
				input_dir = 1
			}
			else {
				input_dir = -1;
			}
			if((int64(rando)) % 3 == 0){
				input_jump = true;
			}


	if(distance_to_object(oPlayer) < 40){
		attack_input = true;
		sprite_index = sprObstacle
	}
	else{
		sprite_index = sprEnemy
	}
	step = 0;
}
step++
	

// Inherit the parent event
event_inherited();

//if above player, move left or right
//if to left, move left, if to the right, move right