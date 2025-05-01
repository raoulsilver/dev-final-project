if (!obj_dialogue_manager.dialogue_open) // if dialogue is closed
{
	// checks for dialogue
	if (room == room_main) // all the dialogue checks in the MAIN ROOM
	{
	    // scene 1
	    if (game_state == 1 and point_distance(obj_player.x, obj_player.y, obj_npc2.x, obj_npc2.y) < 200 and obj_mushroom_manager.mushroom_number != 10)
	    {
	        alpha = lerp(alpha, 0.6, 0.05);
	        if (keyboard_check_pressed(vk_space) and (!obj_dialogue_manager.dialogue_open))
	        {
	            obj_dialogue_manager.dialogue_lines = global.dialogue_scenes.first_scene;
	            obj_dialogue_manager.open_dialogue();
				first_scene_done = true;
	        }
	    } else
		// scene 2
		if(game_state == 1 and point_distance(obj_player.x, obj_player.y, obj_npc2.x, obj_npc2.y) < 200 and obj_mushroom_manager.mushroom_number == 10)
		{
			alpha = lerp(alpha, 0.6, 0.05);
			if (keyboard_check_pressed(vk_space) and (!obj_dialogue_manager.dialogue_open))
			{
				game_state = 2;
			    obj_dialogue_manager.dialogue_lines = global.dialogue_scenes.second_scene;
			    obj_dialogue_manager.open_dialogue();
				second_scene_done = true;
			}
	    } else
		if (obj_player.colliding_time_machine && !time_machine_conv_done)
	    {
	        alpha = lerp(alpha, 0.6, 0.05);
	        if ((!obj_dialogue_manager.dialogue_open))
	        {
			
	            obj_dialogue_manager.dialogue_lines = global.dialogue_scenes.time_machine;
	            obj_dialogue_manager.open_dialogue();
				time_machine_conv_done = true;
			
	        }
	    }
		else
		// dim interact popup
	    {
	        alpha = lerp(alpha, 0, 0.2);
	    }
	}
	if (room == room_past) // all the dialogue in the PAST
	{
		if (game_state == 2 and !third_scene_done and point_distance(obj_player.x, obj_player.y, obj_npc1.x, obj_npc1.y) < 200)
	    {
	        alpha = lerp(alpha, 0.6, 0.05);
	        if (keyboard_check_pressed(vk_space) and (!obj_dialogue_manager.dialogue_open))
	        {
	            obj_dialogue_manager.dialogue_lines = global.dialogue_scenes.third_scene;
	            obj_dialogue_manager.open_dialogue();
				third_scene_done = true;
	        }
	    } else
		if (game_state = 2 and third_scene_done = true and !obj_npc1.chase_started)
		{
			obj_npc1.chase_started = true;
			game_state = 3;
		} else
		// dim interact popup
	    {
	        alpha = lerp(alpha, 0, 0.2);
	    }
	}
}

// fade out interact button thing
if (obj_dialogue_manager.dialogue_open)
{
    alpha = lerp(alpha, 0, 0.2);
}