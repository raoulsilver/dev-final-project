fade_in_alpha = 0.5;
created = false;
count_down = 30;
max_count_down = 30;
number = 0;
fire = false;
can_fire = true;
gun_index = 0;
fire_index = 0;
get_shot_index = 0;
Xpos = 0;
Ypos = 0;
hit_times = 0;
collision_box_width = 600;
collision_box_height = 800;

sprite_shake_x = 50;
sprite_shake_y = 50;

zombie_x = window_get_width()/2;
zombie_y = window_get_height();

shake_var_x = 0;
shake_var_y = 0;

shot_position_x = [10];
shot_position_y = [10];
all_get_shot_index = [0,0,0,0,0,0,0,0,0,0];