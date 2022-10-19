/// @description Insert description here
// You can write your code in this editor

if(team == 1){
	if ++global.points2 >= 5 {
		global.winner = team;
		room_goto(WinScreen);
	}
	
}
else{
	if ++global.points1 >= 5 {
		global.winner = team;
		if (team == 0) {
			room_goto(LoseScreen);
		}
		else {
			room_goto(WinScreen);
		}
	}
}


//Respawn code is character specific
