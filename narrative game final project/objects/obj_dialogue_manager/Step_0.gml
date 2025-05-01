
if (dialogue_open)
{
	// lerp on and off screen
	text_box_lerp_offset = lerp(text_box_lerp_offset, 0, 0.1);
	if (!changing_character_sprite) // makes it so i can swap out sprites
	{
	character_sprite_lerp_offset = lerp(character_sprite_lerp_offset, 0, 0.05);
	}
	fade_in_alpha = lerp(fade_in_alpha, 0.7, 0.17);
	
	if (queue_speak)
	{
		speak();
		queue_speak = false;
	}
	
	if (text_progress < string_length(current_dialogue))
	{
	    text_progress += text_speed;
		// makes text instantly finish if you want
		if (keyboard_check_pressed(vk_space) and text_progress > 1)
		{
			text_progress = string_length(current_dialogue);
			kill_speak();
		}
	} else {
	    // Text fully displayed
	    show_continue_icon = true;
		kill_speak();
	    if (continue_icon_alpha < 0.5) {
	        continue_icon_alpha += 0.05;
	    }
    
	    if (keyboard_check_pressed(vk_space)) {
			if (current_line < array_length(dialogue_lines) - 1) 
			{
				speak();
				current_line += 1;
		        // Reset for next text
		        show_continue_icon = false;
		        continue_icon_alpha = 0;
		        text_progress = 0;
		        current_dialogue = dialogue_lines[current_line].text; // Load next text here
			} else
			{
				dialogue_open = false;
				kill_speak();
			}
			if (active_character_sprite != asset_get_index(dialogue_lines[current_line].sprite))
			{
				changing_character_sprite = true;
			}
	    }
	}

	if (changing_character_sprite)
	{
		character_sprite_lerp_offset = lerp(character_sprite_lerp_offset, window_get_height(), 0.3);
		if (character_sprite_lerp_offset > 800)
		{
			changing_character_sprite = false;
			active_character_sprite = asset_get_index(dialogue_lines[current_line].sprite);
		}
	}
} else
{
	text_progress = 0;
	continue_icon_alpha = 0;
	queue_speak = true;
	text_box_lerp_offset = lerp(text_box_lerp_offset, 220, 0.1);
	character_sprite_lerp_offset = lerp(character_sprite_lerp_offset, window_get_height(), 0.08);
	fade_in_alpha = lerp(fade_in_alpha, 0, 0.015);
}

if (dialogue_open and keyboard_check_pressed(ord("O")))
{
	close_dialogue();
}