
var cur_enemy = Enemy
var spawn_height = 0
var spawn_width = 0
var spawn_delay = 0
var spawn_side = 0

show_debug_message("Spawning enemy: ")
show_debug_message(enemy_tier);
switch(enemy_tier)
{
	case 1: 
		break;
		
	case 2:
		cur_enemy = Gladiator;		
		break;
		
	case 3:
		cur_enemy = Knight;
		break;
		
	default:
		show_debug_message("enemy tier global incorrectly set")
		break;
		
}

spawn_delay = floor(random_range(30, 60 + 1));


alarm_set(0, spawn_delay);


spawn_side = floor(random_range(0, 3 + 1));


if(spawn_side == 0)
{

	spawn_height = floor(random_range(0, room_height + 1));


	instance_create_layer(-100, spawn_height, "Instances", cur_enemy);
}


else
{

	if(spawn_side == 1)
	{

		spawn_height = floor(random_range(0, room_height + 1));
	

		instance_create_layer(room_width + 100, spawn_height, "Instances", cur_enemy);
	}


	else
	{

		if(spawn_side == 2)
		{

			instance_create_layer(spawn_width, -100, "Instances", cur_enemy);
		}
	

		else
		{

			spawn_width = floor(random_range(0, room_width + 1));
		

			instance_create_layer(spawn_width, room_height +100, "Instances", cur_enemy);
		}
	}
}