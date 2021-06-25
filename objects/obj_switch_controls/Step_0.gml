if(place_meeting(x, y, obj_players)){
	if(canSwitch){
		global.switchControls = !global.switchControls;
		if(global.switchControls){
			image_index = 1;
			image_speed = 0;
		} else {
			image_index = 0;
			image_speed = 0;
		}
		canSwitch = false;
		alarm[0] = 5 * room_speed;
	}
}

