/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 4AE31338
/// @DnDArgument : "var" "global.selectedPlayer"
/// @DnDArgument : "value" "3"
if(global.selectedPlayer == 3)
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 43B7D436
	/// @DnDParent : 4AE31338
	/// @DnDArgument : "imageind" "1"
	/// @DnDArgument : "spriteind" "sprPlayer3"
	/// @DnDSaveInfo : "spriteind" "sprPlayer3"
	sprite_index = sprPlayer3;
	image_index = 1;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 1DB64FF3
else
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 158E0E9F
	/// @DnDParent : 1DB64FF3
	/// @DnDArgument : "spriteind" "sprPlayer3"
	/// @DnDSaveInfo : "spriteind" "sprPlayer3"
	sprite_index = sprPlayer3;
	image_index = 0;
}