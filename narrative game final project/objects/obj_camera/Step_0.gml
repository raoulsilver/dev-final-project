x = (lerp(x, obj_player.x - (camera_get_view_width(view_camera[0])/2), smoothing_factor));
y = (lerp(y, obj_player.y - obj_player.sprite_height/2 - (camera_get_view_height(view_camera[0])/2), smoothing_factor));

camera_set_view_pos(view_camera[0],x ,y);

