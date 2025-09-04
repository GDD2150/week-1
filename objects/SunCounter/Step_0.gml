	
	
if(sunlight_count > 20)
{
	// set player gun to tier 3
	PlayerWeapon.sprite_index = Cannon;
}
else if(sunlight_count > 10)
{
	// set player gun to tier 2
	PlayerWeapon.sprite_index = Shotgun;
}