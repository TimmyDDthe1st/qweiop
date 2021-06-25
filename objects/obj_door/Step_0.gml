/// @description

if(buttonPressed)
{	
	if(y < initialPositionY + 80)
	{
		y = y + 1;
		if(!audio_is_playing(snd_door_open) && play_once){
			audio_play_sound(snd_door_open, 10, false)
			play_once = false;
		}
		
	} else {play_once = true;}
} else {
	if(y > initialPositionY)
	{
		y = y - 1;
		if(!audio_is_playing(snd_door_open) && play_once){
			audio_play_sound(snd_door_open, 10, false)
			play_once = false;
		}
		
	} else {play_once = true;}
}


