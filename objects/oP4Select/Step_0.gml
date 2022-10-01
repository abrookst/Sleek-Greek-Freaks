/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 764A6DE5
/// @DnDArgument : "var" "global.selectedPlayer"
/// @DnDArgument : "value" "4"
if(global.selectedPlayer == 4)
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 42751BD3
	/// @DnDParent : 764A6DE5
	/// @DnDArgument : "imageind" "1"
	/// @DnDArgument : "spriteind" "sprPlayer4"
	/// @DnDSaveInfo : "spriteind" "sprPlayer4"
	sprite_index = sprPlayer4;
	image_index = 1;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 462997F4
else
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 0169AA93
	/// @DnDParent : 462997F4
	/// @DnDArgument : "spriteind" "sprPlayer4"
	/// @DnDSaveInfo : "spriteind" "sprPlayer4"
	sprite_index = sprPlayer4;
	image_index = 0;
}