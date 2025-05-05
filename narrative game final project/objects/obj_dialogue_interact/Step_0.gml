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
		if (obj_player.colliding_time_machine && !time_machine_conv_done && game_state == 2)
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
	if(room == room_time_machine)
	{
		if(have_gun && !gun_scene_done)
		{
			 obj_dialogue_manager.dialogue_lines = global.dialogue_scenes.time_machine_gun;
	         obj_dialogue_manager.open_dialogue();
			gun_scene_done = true;
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
		if (game_state == 3 and !obj_npc1.chase_started and third_scene_done and point_distance(obj_player.x, obj_player.y, obj_npc1.x, obj_npc1.y) < 200)
	    {
	        alpha = lerp(alpha, 0.6, 0.05);
	        if (keyboard_check_pressed(vk_space) and (!obj_dialogue_manager.dialogue_open))
	        {
	            obj_dialogue_manager.dialogue_lines = global.dialogue_scenes.post_chase_scene_dark_shroom;
	            obj_dialogue_manager.open_dialogue();
				chase_done = true;
				obj_npc1.alarm[0] = 35;
	        }
	    } else
		// dim interact popup
	    {
	        alpha = lerp(alpha, 0, 0.2);
	    }
	}
	
	if(room == room_main_2)
	{
		time_machine_conv_done = true;
		
		if (!room_main_second_done)
	    {
			
	        alpha = lerp(alpha, 0.6, 0.05);
	        if (keyboard_check_pressed(vk_space) and (!obj_dialogue_manager.dialogue_open))
	        {
				room_main_second_done = true;
	            obj_dialogue_manager.dialogue_lines = global.dialogue_scenes.optional_fourth_scene;
	            obj_dialogue_manager.open_dialogue();
				
	        }
	    }else
		{
	        alpha = lerp(alpha, 0, 0.2);
	    }
	}
	
	if(room == room_future_2)
	{
		
		
		if (!room_future_second_done)
	    {
			
	        alpha = lerp(alpha, 0.6, 0.05);
	        if (keyboard_check_pressed(vk_space) and (!obj_dialogue_manager.dialogue_open))
	        {
				room_future_second_done = true;
	            obj_dialogue_manager.dialogue_lines = global.dialogue_scenes.optional_future_scene;
	            obj_dialogue_manager.open_dialogue();
				
	        }
	    }else
		{
	        alpha = lerp(alpha, 0, 0.2);
	    }
	}
	
	if (room == room_future) // all the dialogue checks in the MAIN ROOM
	{
	    // scene 1
	    if (point_distance(obj_player.x, obj_player.y, obj_npc1_dead.x, obj_npc1_dead.y) < 200  && !fifth_scene_done)
	    {
	       
	            obj_dialogue_manager.dialogue_lines = global.dialogue_scenes.fifth_scene;
	            obj_dialogue_manager.open_dialogue();
				fifth_scene_done = true;
				
				
	    } else
		
		if(fifth_scene_done && !enter_boss_fight)
		{
			enter_boss_fight = true;
		}
		else
		if(boss_fight_done && !sixth_scene_done)
		{
			obj_dialogue_manager.dialogue_lines = global.dialogue_scenes.sixth_scene;
	        obj_dialogue_manager.open_dialogue();
			sixth_scene_done = true;
		}else
		if(sixth_scene_done && !seventh_scene_done)
		{
			obj_dialogue_manager.dialogue_lines = global.dialogue_scenes.seventh_scene;
	        obj_dialogue_manager.open_dialogue();
			seventh_scene_done = true;
		}else
		if(seventh_scene_done && !eighth_scene_done)
		{
			obj_dialogue_manager.dialogue_lines = global.dialogue_scenes.eighth_scene;
	        obj_dialogue_manager.open_dialogue();
			eighth_scene_done = true;
		}else
		if(eighth_scene_done && ! ninth_scene_done)
		{
			
		
			obj_dialogue_manager.dialogue_lines = global.dialogue_scenes.ninth_scene;
	        obj_dialogue_manager.open_dialogue();
			ninth_scene_done = true;
		
		}
		
	}
}

// fade out interact button thing
if (obj_dialogue_manager.dialogue_open)
{
    alpha = lerp(alpha, 0, 0.2);
}
show_debug_message(room_main_second_done);