    // movement
if(canMove)
{
	if (keyboard_check(vk_left) or keyboard_check(ord("A"))) // Check if left arrow key is pressed
    {
        x -= playerspeed; // Move left
    }
    if (keyboard_check(vk_right) or keyboard_check(ord("D"))) // Check if right arrow key is pressed
    {
		x += playerspeed; // Move right
    }
    if (keyboard_check(vk_up)or keyboard_check(ord("W"))) // Check if up arrow key is pressed
    {
		y -= playerspeed; // Move up (Y-axis is inverted in GameMaker)
    }
    if (keyboard_check(vk_down)or keyboard_check(ord("S"))) // Check if down arrow key is pressed
    {
		y += playerspeed;
    }

}	
	// fire projectile
	if (mouse_check_button_pressed(mb_left) and fire_timer > fire_rate) {
		fire_timer = 0;
		if(PlayerWeapon.sprite_index == bullet)
		{
		    // Create the projectile at the player's position
		    var _proj = instance_create_layer(x, y, "Instances", Bullet);
    
		    // Get the direction from player to mouse
		    var _dir = point_direction(x, y, mouse_x, mouse_y);
    
		    // Set the bullet’s speed and direction
		    _proj.direction = _dir;
		    _proj.speed = 8; // Change this number to control bullet speed
			
		}
		else if(PlayerWeapon.sprite_index == Shotgun)
		{
			var spread = 15;
			var straightDir = point_direction(x, y, mouse_x, mouse_y);
			
			// Create bullet going straight
			var bullet_straight = instance_create_layer(x, y, "Instances", Bullet);
			bullet_straight.speed = 8;
			bullet_straight.direction = straightDir;

			// Create bullet at +angle
			var bullet_right = instance_create_layer(x, y, "Instances", Bullet);
			bullet_right.speed = 8; 
			bullet_right.direction = straightDir + spread;

			// Create bullet at -angle
			var bullet_left = instance_create_layer(x, y, "Instances", Bullet);
			bullet_left.speed = 8; 
			bullet_left.direction = straightDir - spread; 
			
		}
		else if(PlayerWeapon.sprite_index == Cannon)
		{
			// shoot cannonball
			// if cannon ball hits an enemy, the ball will explode seeds in eight directions (in cannonball object)
			// Create the projectile at the player's position
		    var _proj = instance_create_layer(x, y, "Instances", CannonballObj);
    
		    // Get the direction from player to mouse
		    var _dir = point_direction(x, y, mouse_x, mouse_y);
    
		    // Set the bullet’s speed and direction
		    _proj.direction = _dir;
		    _proj.speed = 5; // Change this number to control bullet speed
			
			
		}
	}
	else 
	{
		fire_timer += 1/60;	
	}

	
