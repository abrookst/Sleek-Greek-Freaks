/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 204C5956
/// @DnDArgument : "var" "global.selectedPlayer"
/// @DnDArgument : "value" "2"
if(global.selectedPlayer == 2)
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 2E3BA58B
	/// @DnDParent : 204C5956
	/// @DnDArgument : "imageind" "1"
	/// @DnDArgument : "spriteind" "sprPlayer2"
	/// @DnDSaveInfo : "spriteind" "sprPlayer2"
	sprite_index = sprPlayer2;
	image_index = 1;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 60145EE2
else
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 04BEF4AD
	/// @DnDParent : 60145EE2
	/// @DnDArgument : "spriteind" "sprPlayer2"
	/// @DnDSaveInfo : "spriteind" "sprPlayer2"
	sprite_index = sprPlayer2;
	image_index = 0;
}