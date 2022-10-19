/// @description Insert description here
// You can write your code in this editor

global.current_event = irandom(Events.total-1);
//global.current_event = Events.Artemis; //for testing comment out after done
if (global.attackChanged) {
	show_debug_message("Attack reset");
	global.attackMultiplier1 /= 2;
	global.attackMultiplier2 /= 2;
	global.attackChanged = false;
}
if (global.speedChanged) {
	show_debug_message("Speed reset");
	oPlayer.runSpeed /= 2;
	global.speedChanged = false;
}
if (global.allChanged) {
	show_debug_message("All stats reset");
	global.attackMultiplier1 /= 1.5;
	global.attackMultiplier2 /= 1.5;
	oPlayer.runSpeed /= 1.5;
	oPlayer.jumpForce /= 1.5;
	oPlayer.wallJumpUpForce /= 1.5;
	oPlayer.grav *= 1.5;
	oPlayer.xKnockback /= 1.5;
	oPlayer.yKnockback /= 1.5;
	global.allChanged = false;
}
oPlayer.lightningCooldown = false;
oPlayer.fireballCooldown = false;
oPlayer.arrowCooldown = false;

//Alarm is called 
alarm_set(0, frames*seconds);
if created_obj instance_destroy(created_obj);

// For each event, put in the switch case
// what should happen every 10 seconds
switch(global.current_event){
	case(Events.None): 
		show_debug_message("No event"); 
		break;
	//case(Events.Aphrodite): 
	//	show_debug_message("Aphrodite Event");
	//	break;
	//case(Events.Apollo): 
	//	show_debug_message("Apollo Event");
	//	break;
	case(Events.Ares): 
		show_debug_message("Ares Event");
		global.attackMultiplier1 *= 2;
		global.attackMultiplier2 *= 2;
		global.attackChanged = true;
		break;
	case(Events.Artemis): 
		show_debug_message("Artemis Event");
		for (var i = 0; i < int64(random(6)); i++) {
			heightSubtract = 0;
			if (room_get_name(room) == "stage1" || room_get_name(room) == "sp1") {
				heightSubtract = 660;
			} else if (room_get_name(room) == "stage2" || room_get_name(room) == "sp2") {
				heightSubtract = 660;
			} else if (room_get_name(room) == "stage3" || room_get_name(room) == "sp3") {
				heightSubtract = 560;
			} else if (room_get_name(room) == "stage4" || room_get_name(room) == "sp4") {
				heightSubtract = 520;
			}
			if (int64(random(2)) == 1) {
				created_obj2 = instance_create_layer(0, heightSubtract-int64(random(heightSubtract-oPlayer.y)), "Instances", oArtemisArrow);
			} else {
				created_obj2 = instance_create_layer(room_width, heightSubtract-int64(random(heightSubtract-oPlayer.y)), "Instances", oArtemisArrow);
			}
		}
		break;
	//case(Events.Athena): 
	//	show_debug_message("Athena Event");
	//	break;
	case(Events.Demeter): 
		show_debug_message("Demeter Event");
		global.attackMultiplier1 *= 1.5;
		global.attackMultiplier2 *= 1.5;
		oPlayer.runSpeed *= 1.5;
		oPlayer.jumpForce *= 1.5;
		oPlayer.wallJumpUpForce *= 1.5;
		oPlayer.grav /= 1.5;
		oPlayer.xKnockback *= 1.5;
		oPlayer.yKnockback *= 1.5;
		global.allChanged = true;
		break;
	case(Events.Dionysus): 
		show_debug_message("Dionysus Event");
		break;
	//case(Events.Hades): 
	//	show_debug_message("Hades Event");
	//	break;
	case(Events.Hephaestus): 
		show_debug_message("Hephaestus Event");
		for (var i = 0; i < int64(random(6)); i++) {
			heightSubtract = 0;
			if (room_get_name(room) == "stage1" || room_get_name(room) == "sp1") {
				heightSubtract = 660;
			} else if (room_get_name(room) == "stage2" || room_get_name(room) == "sp2") {
				heightSubtract = 660;
			} else if (room_get_name(room) == "stage3" || room_get_name(room) == "sp3") {
				heightSubtract = 560;
			} else if (room_get_name(room) == "stage4" || room_get_name(room) == "sp4") {
				heightSubtract = 520;
			}
			if (int64(random(2)) == 1) {
				created_obj2 = instance_create_layer(0, heightSubtract-int64(random(heightSubtract-oPlayer.y)), "Instances", oFireball);
			} else {
				created_obj2 = instance_create_layer(room_width, heightSubtract-int64(random(heightSubtract-oPlayer.y)), "Instances", oFireball);
			}
		}
		break;
	//case(Events.Hera): 
	//	show_debug_message("Hera Event");
	//	break;
	case(Events.Hermes): 
		show_debug_message("Hermes Event");
		oPlayer.runSpeed *= 2;
		global.speedChanged = true;
		break;
	case(Events.Poseidon):
		show_debug_message("Poseidon Event");
		created_obj = instance_create_layer(room_width/2, room_height, "Instances", oWater);
		break;
	case(Events.Zeus): 
		show_debug_message("Zeus Event");
		created_obj = instance_create_layer(random(room_width - 161), 0, "Instances", oLightning);
		break;
}
