//Get inputs
if team == 1{
	input_dir = keyboard_check(vk_right) - keyboard_check(vk_left);
	input_jump = keyboard_check(vk_up);
	attack_input = keyboard_check_pressed(ord("P"));
	input_down = keyboard_check(vk_down);
}
else if team == 2 {
	input_dir = keyboard_check(ord("D")) - keyboard_check(ord("A"));
	input_jump = keyboard_check(ord("W"));
	attack_input = keyboard_check_pressed(ord("R"));
	input_down = keyboard_check(ord("S"));
}
if (input_dir != 0){//Change sprite facing direction based on inputs
	image_xscale = -input_dir;
}

//Check touching
onGround = place_meeting(x, y+1, oBarrier)
if (!input_down) {
	platform = instance_place(x, y+1, oPlatform);
	if platform and y < platform.y+1 {
		onGround = true;
	}
}
touchLeft = place_meeting(x-1, y, oBarrier);
touchRight = place_meeting(x+1, y, oBarrier);

yVelocity += grav;

if onGround {
	coyote_time = 0;
	
	//Ground movement
	if !stunned {
		xVelocity = input_dir * runSpeed;
	}
} else {
	coyote_time += 1;
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

if input_jump and !stunned and jumpCooldown <= 0 and yVelocity >= -1 {
	if coyote_time <= 6 {//Normal Jump (with coyote time)
		yVelocity = -jumpForce;
		coyote_time += 10;
		jumpCooldown = 10;
	} else if touchLeft {//Wall Jump Left
		yVelocity = -wallJumpUpForce;
		xVelocity = wallJumpSideForce;
	} else if touchRight {//Wall Jump Right
		yVelocity = -wallJumpUpForce;
		xVelocity = -wallJumpSideForce;
	}
}

if attack_input and !stunned and attackCooldown==0{
	attackCooldown = attackDuration;
}
if attackCooldown == attackFrame and !stunned {
	attacked = collision_circle(x+(-image_xscale*attackRange), y-(sprite_height/2), attackRange, oPlayer, false, true);
	if attacked and attacked.stunned <= 0 {
		//show_debug_message("Hit!")
		if(team == 1){
			attacked.hp -= attackDamage * global.attackMultiplier1
		}
		else if (team == 2){
			attacked.hp -= attackDamage * global.attackMultiplier2
		} else {
			attacked.hp -= attackDamage;
		}
		attacked.stunned = xKnockback + yKnockback + 3;
		attacked.yVelocity = -yKnockback;
		attacked.xVelocity = -image_xscale * xKnockback;
		if(attacked.hp <= 0){
			instance_destroy(attacked);
		}
	}
}
if attackCooldown > 0{
	attackCooldown -= 1;
}

//Make sure player does not pass through collidables
if place_meeting(x, y+yVelocity, oCollidableParent){
	while !place_meeting(x, y+sign(yVelocity), oCollidableParent){
		y+=sign(yVelocity);
	}
	yVelocity = 0;
}
if !input_down and yVelocity > 0 {
	platform = instance_place(x, y+yVelocity, oPlatform);
	if platform and y < platform.y+1 {
		while !place_meeting(x, y+1, platform){
			y+=1;
		}
		yVelocity = 0;
	}
}
if place_meeting(x+ xVelocity, y, oCollidableParent){
	while !place_meeting(x+sign(xVelocity), y, oCollidableParent){
		x+=sign(xVelocity);
	}
	xVelocity = 0;
}

//Get unstuck
if place_meeting(x, y, oCollidableParent){
	show_debug_message("STUCK")
	/*while place_meeting(x, y, oCollidableParent){
		y-=1;
		x+=1;
	}*/
}

x += xVelocity;
y += yVelocity;

if stunned > 0 {
	stunned -= 1;
}
if jumpCooldown > 0 {
	jumpCooldown -= 1;
}