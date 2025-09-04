// go after player
move_towards_point(Player.x, Player.y, 3);

if(place_meeting(x, y, Player))
{
	// player death animation goes here
	
	// spawn death object
	PlayerDeath();
	
}

// flip sprite if player is on the right
if(Player.x > x)
{
	image_xscale = -1	
}
else
{
	image_xscale = 1	
}