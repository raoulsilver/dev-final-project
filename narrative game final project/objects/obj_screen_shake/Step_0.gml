if(shake_length == 0)//not shaking
{
	shakeX = 0;
	shakeY = 0;
	camera_set_view_pos(view_camera[0], xs, ys);
	xs = camera_get_view_x(view_camera[0]);
	ys = camera_get_view_y(view_camera[0]);
	
	obj_boss_fight.zombie_x = window_get_width()/ 2;
	obj_boss_fight.zombie_y = window_get_height();
	
	
}


if(shake_length > 0)
{
	shakeX = -(shake_intensity/2) + random(shake_intensity);
	shakeY = -(shake_intensity/2) + random(shake_intensity);
	
	obj_boss_fight.shake_var_x = random_range(-obj_boss_fight.sprite_shake_x, obj_boss_fight.sprite_shake_x);
	obj_boss_fight.shake_var_y = random_range(-obj_boss_fight.sprite_shake_y, obj_boss_fight.sprite_shake_y)
	obj_boss_fight.zombie_x += obj_boss_fight.shake_var_x;
	obj_boss_fight.zombie_y += obj_boss_fight.shake_var_y;
	shake_length --;
}


if(shake_length < 0)
{
	instance_destroy();
}

camera_set_view_pos(view_camera[0], xs + shakeX, ys + shakeY);