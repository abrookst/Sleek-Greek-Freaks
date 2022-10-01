//Get inputs
if team == 1{
	input_dir = keyboard_check(vk_right) - keyboard_check(vk_left);
	input_jump = keyboard_check(ord("Z"));
	attack_input = keyboard_check_pressed(ord("X"));
}
else if team == 2 {
	input_dir = keyboard_check(ord("D")) - keyboard_check(ord("A"));
	input_jump = keyboard_check(ord("Q"));
	attack_input = keyboard_check_pressed(ord("E"));
}
if (input_dir != 0){//Change sprite facing direction based on inputs
	image_xscale = -input_dir;
}

//Check touching
onGround = place_meeting(x, y+1, oBarrier);
touchLeft = place_meeting(x-1, y, oBarrier);
touchRight = place_meeting(x+1, y, oBarrier);

if onGround {
	coyote_time = 0;
	
	//Ground movement
	if !stunned {
		yVelocity = 0;
		xVelocity = input_dir * runSpeed;
	}
} else {
	coyote_time += 1;
	yVelocity += grav;//Gravity
	if !stunned {
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
}

if input_jump and !stunned {
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

if attack_input and !stunned {
	attacked = collision_circle(x+(50*input_dir), y, 32, oPlayer, false, true);
	if attacked {
		attacked.stunned += 10;
		attacked.yVelocity = -10;
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

if stunned {
	stunned -= 1;
}