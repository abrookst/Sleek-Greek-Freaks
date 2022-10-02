
// Room is a global variable that gets the current room
switch(room){
	case TitleScreen: audio_stop_all(); audio_play_sound(mMenu,500,true); break;
	case sp1: audio_stop_all(); audio_play_sound(mHerc,500,true); break;
	case sp2: audio_stop_all(); audio_play_sound(mMedusa,500,true); break;
	case sp3: audio_stop_all(); audio_play_sound(mOdysseus,500,true); break;
	case sp4: audio_stop_all(); audio_play_sound(mPandora,500,true); break;
	case stage1: audio_stop_all(); audio_play_sound(mHerc,500,true); break;
	case stage2: audio_stop_all(); audio_play_sound(mMedusa,500,true); break;
	case stage3: audio_stop_all(); audio_play_sound(mOdysseus,500,true); break;
	case stage4: audio_stop_all(); audio_play_sound(mPandora,500,true); break;
}