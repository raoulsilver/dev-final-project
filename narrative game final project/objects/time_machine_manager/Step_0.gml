

if (obj_player.y > 1900) {
	obj_player.x = 2476;
	obj_player.y = 2630;
	obj_player.new_x = obj_player.x;
	obj_player.new_y = obj_player.y;
	obj_player.xscale = 1.5;
	obj_player.yscale = 1.5;
	if (global.time == "present") {
		if(obj_dialogue_interact.past_scene_done)
		{
			room_goto(room_main_2);
		}else{
			room_goto(room_main);
		}
	}
	if (global.time == "future") {
		room_goto(room_future);
	}
	if (global.time == "past") {
		room_goto(room_past);
	}
	
}

// sound
if (global.time == "present") {
	audio_sound_gain(easier_song, 0.2, 0);	
} else {
	audio_sound_gain(easier_song, 0, 0);		
}

if (obj_player.y < 1700) {
	if (obj_player.x > 1577 and obj_player.x < 1745) {
		if (keyboard_check_pressed(ord("E"))) {
			audio_play_sound(time_machine_sound, 1, 0);
			global.time = "present"
		}
	}
	if (obj_player.x > 1938 and obj_player.x < 2134) {
		if (keyboard_check_pressed(ord("E"))) {
			audio_play_sound(time_machine_sound, 1, 0);
			global.time = "future"
		}
	}
	if (obj_player.x > 1206 and obj_player.x < 1381) {
		if (keyboard_check_pressed(ord("E"))) {
			audio_play_sound(time_machine_sound, 1, 0);
			global.time = "past"
		}
	}
}
