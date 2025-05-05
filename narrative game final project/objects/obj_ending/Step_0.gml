if(obj_dialogue_interact.ninth_scene_done)
{
	if(keyboard_check_pressed(vk_escape))
	{
		can_draw = true;
	}
}

if(can_draw)
{
	text_alpha -= 0.02;
	
	if(text_alpha <= 0)
	{
		can_draw = false;
	}
}else{
	text_alpha = 1;
}