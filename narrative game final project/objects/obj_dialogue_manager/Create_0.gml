randomize();
draw_toggle = 1;
dialogue_open = false;

text_box_lerp_offset = 220;
character_sprite_lerp_offset = window_get_height();
sprite_lerp_offset = 0;
fade_in_alpha = 0;

text_speed = 0.7; // letters per frame
text_progress = 0; // how many letters currently showing
text_offset = -170;

show_continue_icon = false;
continue_icon_alpha = 0; // starts invisible

// for dialogue

function open_dialogue()
{
	text_progress = 0;
	current_line = 0;
	current_dialogue = dialogue_lines[current_line].text;
	text_box_lerp_offset = 220;
	character_sprite_lerp_offset = window_get_height();
	fade_in_alpha = 0;
	continue_icon_alpha = 0;
	dialogue_open = true;
	changing_character_sprite = false;
	change_character_sprite_to = "";
	active_character_sprite = asset_get_index(dialogue_lines[current_line].sprite);
}

function speak()
{
	for (i = 1; i <= 11; i++)
	{
		audio_stop_sound(asset_get_index("talk_" + string(i)));
	}
	talk_index = string("talk_" + string(round(random_range(0, 11))));
	audio_play_sound(asset_get_index(talk_index), 1, 0, 0.1);
}
function kill_speak()
{
	for (i = 1; i <= 11; i++)
	{
		audio_stop_sound(asset_get_index("talk_" + string(i)));
	}
}


global.dialogue_scenes = {
    first_scene: [
	    { text: "Shroom: *Cough*", sprite: spr_neutralShroom },
	    { text: "Doctor mushroom: 'Patient has taken too much mushroom. The hallucinations have prevented him from living normally and caused him much permanent brain damage.'", sprite: spr_doctorMushroom },
	    { text: "Shroom: 'I don't wanna die...'.", sprite: spr_sadShroom },
	    { text: "You: 'Do not worry baby. I will do whatever to help you.'", sprite: spr_happyProtagonist },
	    { text: "Shroom: 'I got an antidote recipe from my ancestors. Maybe it helps.'", sprite: spr_neutralShroom },
		{ text: "'You need to grab me [10 pink mushrooms] in the forest and make them into a glass of mushroom juice.'", sprite: spr_neutralShroom },
		{ text: "'I will feel much better with that.'", sprite: spr_neutralShroom },
		{ text: "You: 'I got you.'", sprite: spr_happyProtagonist },
    ],
    
    second_scene: [
		{ text: "Shroom:'Thank you baby for making this.'", sprite: spr_neutralShroom },
		{ text: "'*Drink*'", sprite: spr_neutralShroom },
		{ text: "Doctor Shroom: 'What did you just give him?'", sprite: spr_doctorMushroom },
		{ text: "'Patient seems to have overdosed on mushrooms and his heartbeat stops just now.'", sprite: spr_doctorMushroom },
		{ text: "'You get out of here!'", sprite: spr_doctorMushroom },
		{ text: "'You: 'Oh no I did not mean to do that.'", sprite: spr_sadProtagonist },
    ],
	
	time_machine: [
		{ text: "'You: 'Is this a time machine?'", sprite: spr_sadProtagonist },
		{ text: "'I have to go back in time to save Shroom!'", sprite: spr_sadProtagonist },
    ],
	
	time_machine_gun: [
		{ text: "'You: 'Maybe I should take this'", sprite: spr_happyProtagonist },
    ],
	
    third_scene: [
		{ text: "'Young Shroom: 'Such a good day for taking my mushroom outside'", sprite: spr_happyShroom },
		{ text: "'Hi baby, you wanna join me?'", sprite: spr_happyShroom },
		{ text: "You: 'No! I am here to stop you from using mushrooms!'", sprite: spr_madProtagonist },
		{ text: "Young Shroom: 'Get away from me!'", sprite: spr_madShroom },
    ],
	post_chase_scene: [
		{ text: "You: *Take away the mushroom*", sprite: spr_madProtagonist },
		{ text: "Young Shroom: 'Give me back!'", sprite: spr_madShroom },
		{ text: "You: *Swallow the whole mushroom*", sprite: spr_madProtagonist },
		{ text: "Young Shroom: 'No!!!'", sprite: spr_sadShroom },
    ],
};

// just for beginning
	current_line = 0;
	dialogue_lines = global.dialogue_scenes.first_scene;
	current_dialogue = dialogue_lines[current_line].text;
	
	queue_speak = true;
	
	text_box_lerp_offset = 220;
	character_sprite_lerp_offset = window_get_height();
	fade_in_alpha = 0;
	continue_icon_alpha = 0;
	dialogue_open = false;
	changing_character_sprite = false;
	change_character_sprite_to = "";
	active_character_sprite = asset_get_index(dialogue_lines[current_line].sprite);

