/// @description Insert description here
// You can write your code in this editor



// Inherit the parent event
event_inherited();

//Play animation
if stunned > 0 {
	sprite_index = sprHerculesAttack
	image_index = 1;
}
else if(attackCooldown > 0){
	sprite_index = sprHerculesaAttack;
}
else if !onGround and !touchLeft and !touchRight {
	sprite_index = sprHerculesJump;;
} else if input_dir == 0 {
	sprite_index = sprHerculesStand;
} else {
	sprite_index = sprHerculesWalk;
}