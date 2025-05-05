if(place_meeting(x, y, obj_player))
{
	obj_mushroom_manager.mushroom_number++;
	if (obj_mushroom_manager.mushroom_number >= 10)
	{
		audio_play_sound(mushroom_collect_sound_2, 1, 0);
	}
	audio_play_sound(mushroom_collect_sound, 1, 0);
	instance_destroy();
}