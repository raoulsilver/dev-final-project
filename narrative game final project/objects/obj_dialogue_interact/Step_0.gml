if (!obj_dialogue_manager.dialogue_open) // if dialogue is closed
{
    // check dialogue scene 1
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
	if(game_state == 1)
	{
		 if (point_distance(obj_player.x, obj_player.y, obj_npc2.x, obj_npc2.y) < 200 and obj_mushroom_manager.mushroom_number == 10)
	    {
		
	        alpha = lerp(alpha, 0.6, 0.05);
	        if (keyboard_check_pressed(vk_space) and (!obj_dialogue_manager.dialogue_open))
	        {
				game_state = 2;
	            obj_dialogue_manager.dialogue_lines = global.dialogue_scenes.second_scene;
	            obj_dialogue_manager.open_dialogue();
				second_scene_done = true;
	        }
		}
    }else
	 if (obj_player.colliding_time_machine && !time_machine_conv_done)
    {
		
        alpha = lerp(alpha, 0.6, 0.05);
        if (keyboard_check_pressed(vk_space) and (!obj_dialogue_manager.dialogue_open))
        {
			
            obj_dialogue_manager.dialogue_lines = global.dialogue_scenes.time_machine;
            obj_dialogue_manager.open_dialogue();
			time_machine_conv_done = true;
			
        }
    }
	else
    {
        alpha = lerp(alpha, 0, 0.2);
    }
	
	
	
}





// fade out interact button thing
if (obj_dialogue_manager.dialogue_open)
{
    alpha = lerp(alpha, 0, 0.2);
}