    // Define a speed variable (e.g., in the Create event)
    // Create Event:
    
	
	
	

    // Step Event:
    if (keyboard_check(vk_left) or keyboard_check(ord("A"))) // Check if left arrow key is pressed
    {
        x -= playerspeed; // Move left
		show_debug_message("left")
    }
    if (keyboard_check(vk_right) or keyboard_check(ord("D"))) // Check if right arrow key is pressed
    {
		x += playerspeed; // Move right
		show_debug_message("right")
    }
    if (keyboard_check(vk_up)or keyboard_check(ord("W"))) // Check if up arrow key is pressed
    {
		y -= playerspeed; // Move up (Y-axis is inverted in GameMaker)
    }
    if (keyboard_check(vk_down)or keyboard_check(ord("S"))) // Check if down arrow key is pressed
    {
		y += playerspeed;
    }
	
	// fire projectile
	if (mouse_check_button_pressed(mb_left)) {
	    // Create the projectile at the player's position
	    var _proj = instance_create_layer(x, y, "Instances", Bullet);
    
	    // Get the direction from player to mouse
	    var _dir = point_direction(x, y, mouse_x, mouse_y);
    
	    // Set the bullet’s speed and direction
	    _proj.direction = _dir;
	    _proj.speed = 8; // Change this number to control bullet speed
	}

	
