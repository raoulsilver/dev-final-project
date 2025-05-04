
// drawing background dimmer
draw_sprite_ext(spr_background_dimmer, 0, 0, 0, 1, 1, 0, c_white, fade_in_alpha);

// drawing character sprite
draw_sprite_ext(active_character_sprite, 0, window_get_width()/2, window_get_height() + character_sprite_lerp_offset, 0.91, 0.91, 0, c_white, 1);

// drawing text box
draw_sprite_ext(spr_text_box, 0, 0, 0 + text_box_lerp_offset, 1, 1, 0, c_white, 0.68);

// drawing dialogue
var current_text = string_copy(current_dialogue, 1, floor(text_progress));
draw_set_font(font_dialogue);

draw_set_halign(fa_center);
draw_set_color(c_ltgray);
draw_text_ext(window_get_width()/2, window_get_height() + text_offset + text_box_lerp_offset, string(current_text), 30, window_get_width() - 400);
	
// continue icon thing
if (show_continue_icon)
{
	draw_set_alpha(continue_icon_alpha);
	draw_text(window_get_width()/2, window_get_height() - 60, "[SPACE] TO CONTINUE"); // Or replace with your own sprite
	draw_set_alpha(1); // reset alpha after drawing
}
