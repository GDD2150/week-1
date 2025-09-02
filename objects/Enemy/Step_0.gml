// go after player
move_towards_point(Player.x, Player.y, 3);

if(place_meeting(x, y, Player))
{
	show_debug_message("collided with player")	
	// player death animation goes here
	
	// spawn death object
	var x_offset = 200;
	var y_offset = 100;
	var center_x = window_get_width()/4 - x_offset;
	var center_y = window_get_height()/4 + y_offset;
	instance_create_layer(center_x, center_y, "Instances", DeathObj);
	
	
	
	
}