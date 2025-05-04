depth = -y;

if (chase_started)
{
	image_speed = 0.4;
	chase_timer--;

    // Distance from player
    var player_x = obj_player.x;
    var player_y = obj_player.y;
    var dist = point_distance(x, y, player_x, player_y);

    // Move away from player if too close
    if (dist < safe_distance) {
        var dir = point_direction(player_x, player_y, x, y);
		if (!place_meeting(x + lengthdir_x(chase_speed, dir), y, obj_collideables))
		{
			x += lengthdir_x(chase_speed, dir);
		}
		if (!place_meeting(x, y + lengthdir_y(chase_speed, dir), obj_collideables))
		{
			y += lengthdir_y(chase_speed, dir);
		}
    } else {
        var dir = point_direction(player_x, player_y, x, y);
		if (!place_meeting(x + lengthdir_x(chase_speed/2.5, dir), y, obj_collideables))
		{
			x += lengthdir_x(chase_speed/2.5, dir);
		}
		if (!place_meeting(x, y + lengthdir_y(chase_speed/2.5, dir), obj_collideables))
		{
			y += lengthdir_y(chase_speed/2.5, dir);
		}
    }

    // check if you catch young shroom
    if (point_distance(x, y, player_x, player_y) < 50 and chase_timer < 0) {
        chase_started = false;
        obj_dialogue_manager.dialogue_lines = global.dialogue_scenes.post_chase_scene;
		obj_dialogue_manager.open_dialogue();
		obj_dialogue_interact.past_scene_done = true;
		image_speed = 0;
		image_index = 0;
    }
}