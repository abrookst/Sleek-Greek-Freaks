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

//Play animation
if room == sp1 {
	if(attackCooldown > 0){
		sprite_index = sprHercAttack;
	}
	else if !onGround and !touchLeft and !touchRight {
		sprite_index = sprHercJump;;
	} else if input_dir == 0 {
		sprite_index = sprHercStand;
	} else {
		sprite_index = sprHercWalk;
	}
} else if room == sp2 {
	if(attackCooldown > 0){
		sprite_index = sprMedusaAttack;
	}
	else if !onGround and !touchLeft and !touchRight {
		sprite_index = sprMedusaJump;
	} else if input_dir == 0 {
		sprite_index = sprMedusaStand;
	} else {
		sprite_index = sprMedusaWalk;
	}
} else if room == sp4 {
	if stunned > 0 {
		sprite_index = sprPandoraAttack
		image_index = 1;
	}
	else if(attackCooldown > 0){
		sprite_index = sprPandoraAttack;
	}
	else if !onGround and !touchLeft and !touchRight {
		sprite_index = sprPandoraJump;;
	} else if input_dir == 0 {
		sprite_index = sprPandoraStand;
	} else {
		sprite_index = sprPandoraWalk;
	}
}