depth = -10000; // just to get it above everything else

image_xscale = 0.35;
image_yscale = 0.35;
image_speed = 0;

starting_x = obj_player.x;
starting_y = obj_player.y;
terminate_distance = 50; // distance player is from dialogue box when it dissapears

// set dialoge
if (obj_player.current_dialogue == 1) {
	image_index = 0; // first dialogue option
}
if (obj_player.current_dialogue == 2) {
	image_index = 1; // first dialogue option
}
if (obj_player.current_dialogue == 3) {
	image_index = 2; // second dialogue option
}