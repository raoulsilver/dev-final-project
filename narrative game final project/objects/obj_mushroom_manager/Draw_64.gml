if(obj_dialogue_interact.game_state == 1 && obj_dialogue_interact.first_scene_done and !obj_dialogue_manager.dialogue_open)
{
	 
	draw_sprite(spr_mushroom, 0, 180, 10);
	draw_set_font(font_mushroom);
	if(mushroom_number < 10)
	{
		draw_text_color(100 , 20, string(mushroom_number) + " / 10", c_white,c_white,c_white,c_white,1);
	}else{
		draw_text_color(100,  20, string(mushroom_number) + " / 10", c_green,c_green,c_green,c_green,1);
	}
}

if (keyboard_check_pressed(ord("P")))
{
	mushroom_number = 10;
}