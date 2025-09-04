
var _target_width = 640; // Example target width for zoomed-in view
var _target_height = 360; // Example target height for zoomed-in view
var _zoom_speed = 0.1; // Adjust for desired speed

var _current_width = camera_get_view_width(view_camera[0]);
var _current_height = camera_get_view_height(view_camera[0]);

//var _new_width = lerp(_current_width, _target_width, _zoom_speed);
//var _new_height = lerp(_current_height, _target_height, _zoom_speed);

camera_set_view_size(view_camera[0], _current_width, _current_height);

var _cam_x = Player.x - (camera_get_view_width(view_camera[0]) / 2);
var _cam_y = Player.y - (camera_get_view_height(view_camera[0]) / 2);

camera_set_view_pos(view_camera[0], _cam_x, _cam_y);