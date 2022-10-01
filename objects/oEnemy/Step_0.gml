/// @description Apply Velocities
// You can write your code in this editor

onGround = place_meeting(x, y+1, oBarrier);
touchLeft = place_meeting(x-1, y, oBarrier);
touchRight = place_meeting(x+1, y, oBarrier);

//if on ground or not
if(onGround){
	//yVelocity = 0;
	coyote_time = 0;
}
else{
	coyote_time += 1;
	yVelocity += grav;
}

//if near an edge, move and jump the other way
if(distance_to_object(oEdge) < 100){
	dir = point_direction(x,y, oEdge.x, oEdge.y);
	xVelocity = -dir * runSpeed;
	if coyote_time < 6 and onGround {
		show_debug_message(coyote_time)
		yVelocity = -12;
		coyote_time += 10;
	}
}

else{
//otherwise, move towards the player
	dir = point_direction(x,y, oPlayer.x, oPlayer.y);
	xVelocity = dir * runSpeed;
	//randomly jump
	rando = random_range(0, 300);
	if rando == 2 and coyote_time < 6 and onGround {
		show_debug_message(coyote_time)
		yVelocity = -12;
		coyote_time += 10;
	}
	if(distance_to_object(oPlayer) < 50){
		//throw punch
	}
}
x += xVelocity;
show_debug_message(yVelocity)
y += yVelocity;



/*
input_dir = keyboard_check(vk_right) - keyboard_check(vk_left);
if (input_dir != 0){
	image_xscale = -input_dir;
}
input_jump = keyboard_check(vk_space);

onGround = place_meeting(x, y+1, oBarrier);
touchLeft = place_meeting(x-1, y, oBarrier);
touchRight = place_meeting(x+1, y, oBarrier);

if  onGround {
	yVelocity = 0;
	coyote_time = 0;
	
	xVelocity = input_dir * runSpeed;
} else {
	coyote_time += 1;
	yVelocity += 0.5;
	if  touchLeft or  touchRight {
		if yVelocity > 2 {
			yVelocity = 2;
		}
	}
	
	if input_dir < 0 {
		if xVelocity > -runSpeed {
			xVelocity = max(xVelocity - 0.7, -runSpeed);
		}
	} else if input_dir > 0 {
		if xVelocity < runSpeed {
			xVelocity = min(xVelocity + 0.7, runSpeed);
		}
	}
}

if input_jump {
	if coyote_time < 6 {
		yVelocity = -12;
		coyote_time += 10;
	}
}

if place_meeting(x, y+yVelocity, oBarrier){
	yVelocity = 0;
}
if place_meeting(x+ xVelocity, y, oBarrier){
	xVelocity = 0;
}

x += xVelocity;
y += yVelocity;

 onGround = false;
 touchLeft = false;
 touchRight = false;
 */