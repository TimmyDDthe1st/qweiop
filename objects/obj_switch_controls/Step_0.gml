if(place_meeting(x, y, obj_players)){
	global.switchControls = true;
	if(global.switchControls){
		image_index += 1;
		obj_players.image_index += 1;
	} else {
		image_index -= 1;
		obj_players.image_index -= 1;
	}
}

