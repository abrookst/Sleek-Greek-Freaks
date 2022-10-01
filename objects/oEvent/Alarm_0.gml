/// @description Insert description here
// You can write your code in this editor

frames = oEvent.frames;
seconds = oEvent.seconds;

//Alarm is called 
alarm_set(0, frames*seconds);

current_event = irandom(Events.total-1);

// For each event, put in the switch case
// what should happen every 10 seconds

// Remove things of last event.
clearEvent(current_event)

switch(current_event){
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
		global.attackModifer = 2.5;
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
		break;
	case(Events.Poseidon):
		show_debug_message("Poseidon Event");
		break;
	case(Events.Zeus): 
		show_debug_message("Zeus Event");
		break;
}

function clearEvent(event){
	switch(event){
		case(Events.None): 
			break;
		case(Events.Aphrodite): 
			break;
		case(Events.Apollo): 
			break;
		case(Events.Ares):
			global.attackModifer = 1.0;
			break;
		case(Events.Artemis): 
			break;
		case(Events.Athena): 
			break;
		case(Events.Demeter): 
			break;
		case(Events.Dionysus): 
			break;
		case(Events.Hades): 
			break;
		case(Events.Hephaestus): 
			break;
		case(Events.Hera): 
			break;
		case(Events.Hermes): 
			break;
		case(Events.Poseidon):
			break;
		case(Events.Zeus): 
			break;
	}
}