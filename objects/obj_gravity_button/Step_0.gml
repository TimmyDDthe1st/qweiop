/// @description Insert description here

if(is_undefined(obj_players))
{
}else{
	if(place_meeting(x, y - 5, obj_players) && canSwitch || (place_meeting(x + 5, y, obj_players) && canSwitch) || (place_meeting(x - 5, y, obj_players) && canSwitch) || (place_meeting(x, y - 5, obj_players) && canSwitch))
	{
		global.invertGravity = !global.invertGravity;
		canSwitch = false;
		alarm[0] = 3 * room_speed;
		if(!audio_is_playing(snd_door_button) && play_once){
			audio_play_sound(snd_door_button, 10, false)
			audio_play_sound(snd_gravity_switch, 10, false)
			play_once = false;
		}
	} else {
		play_once = true;
	}
}

