/// @description Insert description here
// You can write your code in this editor

seconds = 2; //adjust this if time that lightning is there is too short/long

global.framesPassed++;
if (global.framesPassed >= 60*seconds) {
	instance_destroy();
}

