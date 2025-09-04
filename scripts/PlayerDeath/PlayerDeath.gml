function PlayerDeath(){
	// YOU DIED
	var offsetx = Player.x - (camera_get_view_width(view_camera[0]) / 3);
	var offsety = Player.y - (camera_get_view_height(view_camera[0]) / 8);
	instance_create_layer(offsetx, offsety, "Instances", DeathObj);
	
	// destroy player in scene
	Player.canMove = false;
	
}