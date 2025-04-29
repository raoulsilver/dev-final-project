depth = -y;

// Collision with wall
if (!obj_dialogue_manager.dialogue_open)
{
	if (keyboard_check(ord("W")) and !place_meeting(x, y - move_speed, obj_collideables)) {
		new_y = y - move_speed;
		dir = "up";
	}
	if (keyboard_check(ord("S")) and !place_meeting(x, y + move_speed, obj_collideables)) {
		new_y = y + move_speed;
		dir = "down";
	}
	if (keyboard_check(ord("A")) and !place_meeting(x - move_speed, y, obj_collideables)) {
		new_x = x - move_speed;
		dir = "left";
	}
	if (keyboard_check(ord("D")) and !place_meeting(x + move_speed, y, obj_collideables)) {
		new_x = x + move_speed;
		dir = "right";
	}
	
	if (new_x != x or new_y != y) {
		if (dir == "up") {
			sprite_index = spr_player_up;
			image_xscale = xscale;
		}
		if (dir == "down") {
			sprite_index = spr_player_down;
			image_xscale = xscale;
		}
		if (dir == "left") {
			sprite_index = spr_player_side;
			image_xscale = -xscale;
		}
		if (dir == "right") {
			sprite_index = spr_player_side;
			image_xscale = xscale;
		}
		image_speed = animation_speed;
	} else {
		image_speed = 0;
		image_index = 1;
	}
	
	x = new_x;
	y = new_y;

	image_yscale = yscale;
} else
{
	image_speed = 0;
}

// dialoge boxes
//if (keyboard_check_pressed(vk_space) and room == room_main) {
//	instance_destroy(obj_dialogue);
//	if (point_distance(x, y, obj_npc1.x, obj_npc1.y) < 50) {
//		if (key_acquired) {
//			current_dialogue = 2;
//		} else {
//			current_dialogue = 1;
//		}
//		instance_create_layer(camera_get_view_x(view_camera[0]) + (camera_get_view_width(view_camera[0])/2), camera_get_view_y(view_camera[0]) + (camera_get_view_height(view_camera[0])/3.5), "Instances", obj_dialogue);
//		audio_play_sound(dialogue_sound, 1, 0);
//	}
//		if (point_distance(x, y, obj_npc2.x, obj_npc2.y) < 50) {
//		current_dialogue = 3;
//		instance_create_layer(camera_get_view_x(view_camera[0]) + (camera_get_view_width(view_camera[0])/2), camera_get_view_y(view_camera[0]) + (camera_get_view_height(view_camera[0])/3.5), "Instances", obj_dialogue);
//		audio_play_sound(dialogue_sound, 1, 0);
//	}

	
//}

// collisions
if (place_meeting(x, y, obj_key)) {
	key_acquired = true;
	audio_play_sound(key_sound, 1, 0);
	instance_destroy(obj_key);
}
if (place_meeting(x, y, obj_door_collision)) {
	if (key_acquired == true) {
		audio_play_sound(door_sound, 1, 0);
		instance_destroy(obj_door);
		instance_destroy(obj_door_collision);
		global.door_opened = true;
	}
}
if (place_meeting(x, y, obj_time_machine_door_collision)) {
	room_goto(room_time_machine);
}

// game end
if (point_distance(x, y, 1669, 290) < 30) {
	audio_play_sound(win_sound, 1, 0);
	global.time = "present";
	global.door_opened = "false";
	audio_stop_sound(easier_song);
	room_goto(room_begin);
	instance_destroy();
}

show_debug_message("x = " + string(x) + " y = " + string(y));
