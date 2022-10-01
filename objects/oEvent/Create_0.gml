/// @description Insert description here
// You can write your code in this editor

global.attackModifer = 1.0;

seconds = 10;
frames = 60;

//Enum for all events
enum Events {
	None,
	Aphrodite,
	Apollo,
	Ares,
	Artemis,
	Athena,
	Demeter,
	Dionysus,
	Hades,
	Hephaestus,
	Hera,
	Hermes,
	Poseidon,
	Zeus,
	total //This enum is just to indicate last event
}

global.current_event = Events.None;
show_debug_message("Current event is: None");

alarm[0] = seconds * frames; //How many frames until the next time the alarm triggers