/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 57861BF4
/// @DnDArgument : "var" "global.selectedPlayer"
/// @DnDArgument : "value" "2"
if(global.selectedPlayer == 2)
{
	/// @DnDAction : YoYo Games.Common.Set_Global
	/// @DnDVersion : 1
	/// @DnDHash : 6E1A4431
	/// @DnDParent : 57861BF4
	/// @DnDArgument : "value" "3"
	/// @DnDArgument : "var" "global.selectedPlayer"
	global.selectedPlayer = 3;
}