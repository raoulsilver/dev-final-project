if (!obj_dialogue_manager.dialogue_open) // test
{
	alpha = lerp(alpha, 0.6, 0.05);
	
	if (keyboard_check_pressed(vk_space) and (!obj_dialogue_manager.dialogue_open))
	{
		obj_dialogue_manager.dialogue_lines = global.dialogue_scenes.first_scene;
		obj_dialogue_manager.open_dialogue();
	}
}

if (obj_dialogue_manager.dialogue_open)
{
	alpha = lerp(alpha, 0, 0.2);
}