switch(room){
	case sp1loss: room_goto(sp1); break;
	case sp2loss: room_goto(sp2); break;
	case sp3loss: room_goto(sp3); break;
	case sp4loss: room_goto(sp4); break;
	default: if global.mode == 2
		room_goto(StageSelect);
	else 
		room_goto(TitleScreen)
	break;
}
