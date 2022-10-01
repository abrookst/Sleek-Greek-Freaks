//Get inputs
input_dir = keyboard_check(vk_right) - keyboard_check(vk_left);
if (input_dir != 0){//Change sprite facing direction based on inputs
	image_xscale = -input_dir;
}
input_jump = keyboard_check(vk_space);

//Check touching
onGround = place_meeting(x, y+1, oBarrier);
touchLeft = place_meeting(x-1, y, oBarrier);
touchRight = place_meeting(x+1, y, oBarrier);

if  onGround {
	yVelocity = 0;
	coyote_time = 0;
	
	//Ground movement
	xVelocity = input_dir * runSpeed;
} else {
	coyote_time += 1;
	yVelocity += grav;//Gravity
	if touchLeft or touchRight {//Wall slide
		yVelocity = min(2, yVelocity);
	}
	
	//Air movement
	if input_dir < 0 {//Moving left
		if xVelocity > -runSpeed {
			xVelocity = max(xVelocity - airRunAcceleration, -runSpeed);
		}
	} else if input_dir > 0 {//Moving right
		if xVelocity < runSpeed {
			xVelocity = min(xVelocity + airRunAcceleration, runSpeed);
		}
	}
}

if input_jump {
	if coyote_time <= 6 {//Normal Jump (with coyote time)
		yVelocity = -jumpForce;
		coyote_time += 10;
	} else if touchLeft {//Wall Jump Left
		yVelocity = -wallJumpUpForce;
		xVelocity = wallJumpSideForce;
	} else if touchRight {//Wall Jump Right
		yVelocity = -wallJumpUpForce;
		xVelocity = -wallJumpSideForce;
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