if(obj_dialogue_interact.enter_boss_fight && !obj_dialogue_interact.boss_fight_done)
{
// drawing background dimmer
	draw_sprite_ext(spr_background_dimmer, 0, 0, 0, 1, 1, 0, c_white, fade_in_alpha);

	// drawing character sprite
	draw_sprite_ext(spr_madZombieShroom, 0, zombie_x, zombie_y, 0.91, 0.91, 0, c_white, 1);

	if(fire)
	{
	
		draw_sprite(spr_first_person_shoot_fire_effect, fire_index, Xpos, Ypos);
		fire_index ++;
		gun_index = 1;
		if(fire_index >= 4)
		{
			fire = false;
			fire_index = 0;
		}
	
	}else{
		gun_index = 0;
	}



	for(var i = 0; i < hit_times; i ++)
	{
	
	
		draw_sprite(spr_first_person_get_shot_effect, all_get_shot_index[i], shot_position_x[i], shot_position_y[i]);
		if(all_get_shot_index[i] < 18)
		{
			all_get_shot_index[i] ++;
		}
	}




	draw_sprite(spr_first_person_shoot, gun_index, device_mouse_x_to_gui(0), device_mouse_y_to_gui(0));
}
