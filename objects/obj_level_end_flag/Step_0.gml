/// @description Insert description here
if(place_meeting(x, y, obj_player_1))
{
	player1Check = true;	
}

if(place_meeting(x, y, obj_player_2))
{
	player2Check = true;
}
if(player1Check && player2Check)
{
	room_goto_next();
}


