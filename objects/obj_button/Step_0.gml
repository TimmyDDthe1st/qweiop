/// @description Insert description here
if(is_undefined(obj_players))
{

}else{
	if(place_meeting(x, y - 5, obj_players))
	{
		obj_door.buttonPressed = true;
	} else {
		obj_door.buttonPressed = false;	
	}
}

if(place_meeting(x, y - 1, obj_players)){
	if(!audio_is_playing(snd_door_button) && play_once){
		audio_play_sound(snd_door_button, 10, false)
		play_once = false;
	}
} else {
	play_once = true;	
}

