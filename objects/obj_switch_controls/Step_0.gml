if(place_meeting(x, y, obj_players)){

	counter --;
	
	global.switchControls = !global.switchControls;
	if(global.switchControls){
		image_index = 1;
		image_speed = 0;
	} else {
		image_index = 0;
		image_speed = 0;
	}
}

