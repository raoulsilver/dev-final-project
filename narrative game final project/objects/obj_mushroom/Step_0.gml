if(place_meeting(x, y, obj_player))
{
	obj_mushroom_manager.mushroom_number++;
	audio_play_sound(mushroom_collect_sound, 1, 0);
	instance_destroy();
}