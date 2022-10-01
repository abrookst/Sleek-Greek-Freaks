//Get inputs
if team == 1{
	input_dir = keyboard_check(vk_right) - keyboard_check(vk_left);
	input_jump = keyboard_check(ord("N"));
	attack_input = keyboard_check_pressed(ord("M"));
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
	yVelocity += grav;
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

if input_jump and !stunned and jumpCooldown <= 0 {
	show_debug_message(jumpCooldown)
	if coyote_time <= 6 {//Normal Jump (with coyote time)
		yVelocity = -jumpForce;
		coyote_time += 10;
		jumpCooldown = 10;
	} else if touchLeft {//Wall Jump Left
		yVelocity = -wallJumpUpForce;
		if input_dir < 0
			xVelocity = wallJumpSideForce*2;
		else
			xVelocity = wallJumpSideForce;
	} else if touchRight {//Wall Jump Right
		yVelocity = -wallJumpUpForce;
		if input_dir < 0
			xVelocity = -wallJumpSideForce*2;
		else
			xVelocity = -wallJumpSideForce;
	}
}

if attack_input and !stunned {
	attacked = collision_circle(x+(64*-image_xscale), y, 32, oPlayer, false, true);
	if attacked {
		attacked.stunned = xKnockback + yKnockback;
		attacked.yVelocity = -yKnockback;
		attacked.xVelocity = -image_xscale * xKnockback;
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

if stunned {
	stunned -= 1;
}
if jumpCooldown > 0 {
	jumpCooldown -= 1;
}