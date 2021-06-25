function jump(keyJump){
	show_debug_message(onGround)
	
	if(keyJump){
		if(global.invertGravity){
			vsp = -7;
			audio_play_sound(snd_jump_2, 10, false);
			TweenFire(id, EaseInOutQuad, TWEEN_MODE_BOUNCE, false, 0, 5, "image_yscale", 1, 1.5);
		} else {
			vsp = 7;
			audio_play_sound(snd_jump_2, 10, false);
			TweenFire(id, EaseInOutQuad, TWEEN_MODE_BOUNCE, false, 0, 5, "image_yscale", 1, 1.5);
		}
	}
	
	if(place_meeting(x, y+1, obj_obstacles)){
		onGround = true;
	} else {
		onGround = false;
	}
	
	if(!onGround){
		coyoteCounter -= 1;
		if(coyoteCounter >= 0){
			if(keyJump){
				if(global.invertGravity){
					show_debug_message("LOG")
					vsp = -7;
					audio_play_sound(snd_jump_2, 10, false);
					TweenFire(id, EaseInOutQuad, TWEEN_MODE_BOUNCE, false, 0, 5, "image_yscale", 1, 1.5);
				} else {
					vsp = 7;
					show_debug_message("LOG")
					audio_play_sound(snd_jump_2, 10, false);
					TweenFire(id, EaseInOutQuad, TWEEN_MODE_BOUNCE, false, 0, 5, "image_yscale", 1, 1.5);
				}
			}
		}
	} else {
		coyoteCounter = coyoteMax;
		jumped = false;
	}
}
