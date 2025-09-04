if(place_meeting(x, y, Player))
{
	// heal player over time
	Player.player_health += Player.growth_rate;
	
	// increment sunlight resource
	sunlight_count += SunCounter.sun_growth_rate;
}