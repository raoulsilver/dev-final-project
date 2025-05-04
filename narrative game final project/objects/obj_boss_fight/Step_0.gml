//if(obj_dialogue_interact.enter_boss_fight && !created)
//{
//	instance_create_layer( window_get_width()/2, window_get_height(), "Instances_1", obj_zombie_shroom);
//	created = true;
//}

if(obj_dialogue_interact.enter_boss_fight && !obj_dialogue_interact.boss_fight_done)
{
	if(count_down <= 0)
	{
		if(number == 1)
		{
			number = 0;
		}else{
			number = 1;
		}
		count_down = max_count_down;
	}else{
		count_down --;
	}

	if(hit_times < 10)
	{
		can_fire = true;
	}else{
		can_fire = false;
		obj_dialogue_interact.boss_fight_done = true;
	}

	if(mouse_check_button_pressed(mb_left) && can_fire)
	{
		fire = true;
		Xpos = device_mouse_x_to_gui(0);
		Ypos = device_mouse_y_to_gui(0);

		if((point_in_rectangle (device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), window_get_width()/2 - collision_box_width/4, 250, window_get_width()/2 + collision_box_width/4, window_get_height()/2 + 100)) || (point_in_rectangle (device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), window_get_width()/2 - 100, 0,  window_get_width()/2 + 60, 200)) || (point_in_rectangle (device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), window_get_width()/2 - 20, 150,  window_get_width()/2 + 20, 250)))
		{
		
			shot_position_x[hit_times] = Xpos;
			shot_position_y[hit_times] = Ypos;
			//ds_list_add(shot_position_x, Xpos);
			//ds_list_add(shot_position_y, Ypos);
			//ds_list_add(all_get_shot_index, 0);
			hit_times++;
			instance_create_layer(0, 0, "Utilities", obj_screen_shake);
		
		}
	}
}