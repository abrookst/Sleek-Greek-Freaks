/// @description Insert description here
// You can write your code in this editor



// Inherit the parent event
event_inherited();

//Play animation
if(attackCooldown > 0){
	sprite_index = sprMedusaAttack;
}
else if !onGround and !touchLeft and !touchRight {
	sprite_index = sprMedusaJump;;
} else if input_dir == 0 {
	sprite_index = sprMedusaStand;
} else {
	sprite_index = sprMedusaWalk;
}
