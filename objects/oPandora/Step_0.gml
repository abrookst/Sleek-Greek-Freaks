/// @description Insert description here
// You can write your code in this editor



// Inherit the parent event
event_inherited();

//Play animation
if !onGround and !touchLeft and !touchRight {
	sprite_index = sprPandoraJump;;
} else if input_dir == 0 {
	sprite_index = sprPandoraStand;
} else {
	sprite_index = sprPandoraWalk;
}
if(attack_input){
	sprite_index = sprPandoraAttack;
}