/// @description Insert description here
// You can write your code in this editor



// Inherit the parent event
event_inherited();

//Play animation
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