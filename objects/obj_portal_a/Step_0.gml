/// @description Insert description here

player = instance_place(x, y, obj_players);

if(place_meeting(x, y, player))
{
	if(play_once){
		audio_play_sound(snd_teleport, 10, false)
		play_once = false;
	}
	player.x = obj_portal_b.x;
	player.y = obj_portal_b.y;
} else {
	play_once = true;	
}

