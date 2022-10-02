/// @description Insert description here
// You can write your code in this editor

//global.current_event = irandom(Events.total-1);
global.current_event = Events.Apollo; //for testing comment out after done
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

//Alarm is called 
alarm_set(0, frames*seconds);
if created_obj instance_destroy(created_obj);

// For each event, put in the switch case
// what should happen every 10 seconds
switch(global.current_event){
	case(Events.None): 
		show_debug_message("No event"); 
		break;
	case(Events.Aphrodite): 
		show_debug_message("Aphrodite Event");
		break;
	case(Events.Apollo): 
		show_debug_message("Apollo Event");
		break;
	case(Events.Ares): 
		show_debug_message("Ares Event");
		global.attackMultiplier1 *= 2;
		global.attackMultiplier2 *= 2;
		global.attackChanged = true;
		break;
	case(Events.Artemis): 
		show_debug_message("Artemis Event");
		break;
	case(Events.Athena): 
		show_debug_message("Athena Event");
		break;
	case(Events.Demeter): 
		show_debug_message("Demeter Event");
		break;
	case(Events.Dionysus): 
		show_debug_message("Dionysus Event");
		break;
	case(Events.Hades): 
		show_debug_message("Hades Event");
		break;
	case(Events.Hephaestus): 
		show_debug_message("Hephaestus Event");
		break;
	case(Events.Hera): 
		show_debug_message("Hera Event");
		break;
	case(Events.Hermes): 
		show_debug_message("Hermes Event");
		oPlayer.runSpeed *= 2;
		global.speedChanged = true;
		break;
	case(Events.Poseidon):
		show_debug_message("Poseidon Event");
		created_obj = instance_create_layer(686, 361, "Instances", oWater)
		break;
	case(Events.Zeus): 
		show_debug_message("Zeus Event");
		created_obj = instance_create_layer(random(room_width - 161), 0, "Instances", oLightning);
		break;
}
