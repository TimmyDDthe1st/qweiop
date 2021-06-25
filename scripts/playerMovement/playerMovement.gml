function playerMovement(keyLeft, keyRight, keyJump){
    
var move = keyRight - keyLeft;

hsp = move * walksp;

if(global.invertGravity)
{
    vsp = vsp - global.grv;
} else {
    vsp = vsp + global.grv;
}

if(global.invertGravity){
    if(place_meeting(x, y - 1, obj_obstacles) && (keyJump)){
        vsp = 7;
        audio_play_sound(snd_jump_2, 10, false);
        TweenFire(id, EaseInOutQuad, TWEEN_MODE_BOUNCE, false, 0, 5, "image_yscale", 1, 1.5);
    }     
} else {
    if(place_meeting(x, y + 1, obj_obstacles) && (keyJump)){
        vsp = -7;
        audio_play_sound(snd_jump_2, 10, false);
        TweenFire(id, EaseInOutQuad, TWEEN_MODE_BOUNCE, false, 0, 5, "image_yscale", 1, 1.5);
    }
}

//Horizontal Collision
if(place_meeting(x + hsp, y, obj_obstacles))
{
    while(!place_meeting(x + sign(hsp), y, obj_obstacles))
    {
        x = x + sign(hsp);
    }
    hsp = 0;
	if(global.invertGravity){
		if(keyJump){
			vsp = 7;
			audio_play_sound(snd_jump_2, 10, false);
			TweenFire(id, EaseInOutQuad, TWEEN_MODE_BOUNCE, false, 0, 5, "image_yscale", 1, 1.5);
		}     
	} else {
		if(keyJump){
			vsp = -7;
			audio_play_sound(snd_jump_2, 10, false);
			TweenFire(id, EaseInOutQuad, TWEEN_MODE_BOUNCE, false, 0, 5, "image_yscale", 1, 1.5);
		}
	}
}

x = x + hsp;

//Vertical Collision
if(place_meeting(x, y + vsp, obj_obstacles))
{
    while(!place_meeting(x, y + sign(vsp), obj_obstacles))
    {
        y = y + sign(vsp);
    }
    vsp = 0;
}

y = y + vsp;

if(place_meeting(x, y + vsp, obj_button))
{
    obj_door.buttonPressed = true;
}

if(!global.invertGravity)
{
    if(place_meeting(x, y + 1, obj_obstacles)){
        if(!audio_is_playing(snd_land_2) && play_once){
            audio_play_sound(snd_land_2, 10, false)
            play_once = false;
        }
    } else {
        play_once = true;    
    }
} else {
    if(place_meeting(x, y - 1, obj_obstacles)){
        if(!audio_is_playing(snd_land_2) && play_once){
            audio_play_sound(snd_land_2, 10, false)
            play_once = false;
        }
    } else {
        play_once = true;    
    }
}


}