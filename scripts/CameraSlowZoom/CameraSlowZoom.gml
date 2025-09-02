function CameraSlowZoom(){
	// In Step Event of a controller object or the object being followed
	// Get the camera
	var cam = view_camera[0]; // Default camera for view 0
	var target = DeathObj;  // The object to center on

	// Zoom settings
	var zoom_speed = 100; // Adjust for faster/slower zooming
	var max_zoom = 2.0;    // Maximum zoom-out factor (e.g., 2x original size)
	var base_view_width = 1024;  // Base width of the view (set to your default)
	var base_view_height = 768;  // Base height of the view (set to your default)

	// Current view dimensions
	var current_width = camera_get_view_width(cam);
	var current_height = camera_get_view_height(cam);

	// Increase view size to zoom out (maintain aspect ratio)
	var new_width = lerp(current_width, base_view_width * max_zoom, zoom_speed);
	var new_height = lerp(current_height, base_view_height * max_zoom, zoom_speed);

	// Apply new view size
	camera_set_view_size(cam, new_width, new_height);

	// Center camera on the target object
	if(instance_exists(target)) {
	    var cam_x = target.x - new_width / 2;
	    var cam_y = target.y - new_height / 2;
	    camera_set_view_pos(cam, cam_x, cam_y);
	}
}