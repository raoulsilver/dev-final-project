move_speed = 3.5;

new_x = x;
new_y = y;

dir = "down";

footstep_countdown = 0;
footstep_countdown_duration = 18;

key_acquired = true;

animation_speed = 0.3;

current_dialogue = noone; // logs what npc you are talking to

colliding_time_machine = false;


image_speed = 0;

image_xscale = 1.5;
image_yscale = 1.5;

xscale = 1.5;
yscale = 1.5;

audio_play_sound(ambience_sound, 1, 1, 0.1);