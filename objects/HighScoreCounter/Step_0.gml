// this is the high score
// based off of time player is alive
// upgrades enemy units at arbitrary thresholds

delay += 1/60;

if(delay > 3)
{

	if(isPlayerAlive)
	{
		high_score += high_score_rate;	
		
		
		// putting this here on purpose
		if(high_score > 120)
		{
			enemy_tier = 3;
			
		}
		else if(high_score > 60)
		{
			enemy_tier = 2;
		}
	
	}
	
	
}