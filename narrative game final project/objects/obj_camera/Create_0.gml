
smoothing_factor = 0.09;

view_width = camera_get_view_width(view_camera[0]);
view_height = camera_get_view_height(view_camera[0]);

// cam init
x = obj_player.x - (camera_get_view_width(view_camera[0])/2);
y = obj_player.y - (camera_get_view_height(view_camera[0])/2);
camera_set_view_pos(view_camera[0], x,y);
