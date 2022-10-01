/// @description Insert description here
// You can write your code in this editor

seconds = 10;
frames = 60;

alarm[0] = seconds * frames; //How many frames until the next time the alarm triggers

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

current_event = Events.None;
