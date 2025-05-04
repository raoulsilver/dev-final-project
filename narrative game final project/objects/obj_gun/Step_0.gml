if(place_meeting(x, y, obj_player) && !obj_dialogue_interact.have_gun)
{
	obj_dialogue_interact.have_gun = true;
	audio_play_sound(mushroom_collect_sound, 1, 0);
	
	visible = false;
}