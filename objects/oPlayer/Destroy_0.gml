/// @description Insert description here
// You can write your code in this editor

if(team == 1){
	if ++global.points2 >= 5 {
		global.winner = 2;
		room_goto(WinScreen);
	}
	
}
else{
	if ++global.points1 >= 5 {
		global.winner = 1;
		room_goto(WinScreen);
	}
}


//Respawn code is character specific
