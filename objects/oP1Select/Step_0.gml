/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 11DC7FF5
/// @DnDArgument : "var" "global.selectedPlayer"
/// @DnDArgument : "value" "1"
if(global.selectedPlayer == 1)
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 4F4FF0DC
	/// @DnDParent : 11DC7FF5
	/// @DnDArgument : "imageind" "1"
	/// @DnDArgument : "spriteind" "sprPlayer1"
	/// @DnDSaveInfo : "spriteind" "sprPlayer1"
	sprite_index = sprPlayer1;
	image_index = 1;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 5BF0D6F5
else
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 719CC5B2
	/// @DnDParent : 5BF0D6F5
	/// @DnDArgument : "spriteind" "sprPlayer1"
	/// @DnDSaveInfo : "spriteind" "sprPlayer1"
	sprite_index = sprPlayer1;
	image_index = 0;
}

/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
/// @DnDVersion : 1
/// @DnDHash : 0E521006
/// @DnDArgument : "msg" "global.selectedPlayer"
show_debug_message(string(global.selectedPlayer));