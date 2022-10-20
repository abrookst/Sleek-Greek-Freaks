/// @description Insert description here
// You can write your code in this editor

if(team == 1){
	if ++global.points2 >= 5 {
		global.winner = 2;
		if global.mode == 1
			switch room {
				case sp1: room_goto(sp1loss); break;
				case sp2: room_goto(sp2loss); break;
				case sp3: room_goto(sp3loss); break;
				case sp4: room_goto(sp4loss); break;
				default: room_goto(LoseScreen) break;
			}
		else
			room_goto(WinScreen);
	}
	
}
else{
	if ++global.points1 >= 5 {
		global.winner = 1;
		if global.mode == 1
			switch room {
				case sp1: room_goto(sp1win); break;
				case sp2: room_goto(sp2win); break;
				case sp3: room_goto(sp3win); break;
				case sp4: room_goto(sp4win); break;
				default: room_goto(WinScreen) break;
			}
		else
			room_goto(WinScreen);
	}
}


//Respawn code is character specific