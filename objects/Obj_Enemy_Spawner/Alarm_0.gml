/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 14148F19
/// @DnDArgument : "var" "spawn_delay"
/// @DnDArgument : "type" "1"
/// @DnDArgument : "min" "30"
/// @DnDArgument : "max" "60"
spawn_delay = floor(random_range(30, 60 + 1));

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 0BF7D0D7
/// @DnDArgument : "steps" "spawn_delay"
alarm_set(0, spawn_delay);

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 7628B735
/// @DnDArgument : "var" "spawn_side"
/// @DnDArgument : "type" "1"
/// @DnDArgument : "max" "3"
spawn_side = floor(random_range(0, 3 + 1));

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 4506D4B7
/// @DnDArgument : "var" "spawn_side"
if(spawn_side == 0)
{
	/// @DnDAction : YoYo Games.Random.Get_Random_Number
	/// @DnDVersion : 1
	/// @DnDHash : 04B05704
	/// @DnDParent : 4506D4B7
	/// @DnDArgument : "var" "spawn_height"
	/// @DnDArgument : "type" "1"
	/// @DnDArgument : "max" "room_height"
	spawn_height = floor(random_range(0, room_height + 1));

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 4E898360
	/// @DnDParent : 4506D4B7
	/// @DnDArgument : "xpos" "-100"
	/// @DnDArgument : "ypos" "spawn_height"
	/// @DnDArgument : "objectid" "Obj_Enemy"
	/// @DnDSaveInfo : "objectid" "Obj_Enemy"
	instance_create_layer(-100, spawn_height, "Instances", Obj_Enemy);
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 2F0538B8
else
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 51202DF1
	/// @DnDParent : 2F0538B8
	/// @DnDArgument : "var" "spawn_side"
	/// @DnDArgument : "value" "1"
	if(spawn_side == 1)
	{
		/// @DnDAction : YoYo Games.Random.Get_Random_Number
		/// @DnDVersion : 1
		/// @DnDHash : 09A04757
		/// @DnDParent : 51202DF1
		/// @DnDArgument : "var" "spawn_height"
		/// @DnDArgument : "type" "1"
		/// @DnDArgument : "max" "room_height"
		spawn_height = floor(random_range(0, room_height + 1));
	
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 4D2D562C
		/// @DnDParent : 51202DF1
		/// @DnDArgument : "xpos" "room_width + 100"
		/// @DnDArgument : "ypos" "spawn_height"
		/// @DnDArgument : "objectid" "Obj_Enemy"
		/// @DnDSaveInfo : "objectid" "Obj_Enemy"
		instance_create_layer(room_width + 100, spawn_height, "Instances", Obj_Enemy);
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 0556D0AF
	/// @DnDParent : 2F0538B8
	else
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 2E70F22E
		/// @DnDParent : 0556D0AF
		/// @DnDArgument : "var" "spawn_side"
		/// @DnDArgument : "value" "2"
		if(spawn_side == 2)
		{
			/// @DnDAction : YoYo Games.Random.Get_Random_Number
			/// @DnDVersion : 1
			/// @DnDHash : 07BD29A7
			/// @DnDParent : 2E70F22E
			/// @DnDArgument : "var" "sprite_width"
			/// @DnDArgument : "type" "1"
			/// @DnDArgument : "max" "room_width"
			sprite_width = floor(random_range(0, room_width + 1));
		
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 3CB8FAAC
			/// @DnDParent : 2E70F22E
			/// @DnDArgument : "xpos" "spawn_width"
			/// @DnDArgument : "ypos" "-100"
			/// @DnDArgument : "objectid" "Obj_Enemy"
			/// @DnDSaveInfo : "objectid" "Obj_Enemy"
			instance_create_layer(spawn_width, -100, "Instances", Obj_Enemy);
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 0C4E2332
		/// @DnDParent : 0556D0AF
		else
		{
			/// @DnDAction : YoYo Games.Random.Get_Random_Number
			/// @DnDVersion : 1
			/// @DnDHash : 21931B7C
			/// @DnDParent : 0C4E2332
			/// @DnDArgument : "var" "spawn_width"
			/// @DnDArgument : "type" "1"
			/// @DnDArgument : "max" "room_width"
			spawn_width = floor(random_range(0, room_width + 1));
		
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 72054033
			/// @DnDParent : 0C4E2332
			/// @DnDArgument : "xpos" "spawn_width"
			/// @DnDArgument : "ypos" "room_height +100"
			/// @DnDArgument : "objectid" "Obj_Enemy"
			/// @DnDSaveInfo : "objectid" "Obj_Enemy"
			instance_create_layer(spawn_width, room_height +100, "Instances", Obj_Enemy);
		}
	}
}