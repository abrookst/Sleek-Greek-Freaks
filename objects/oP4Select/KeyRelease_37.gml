/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 51FD35EC
/// @DnDArgument : "var" "global.selectedPlayer"
/// @DnDArgument : "value" "4"
if(global.selectedPlayer == 4)
{
	/// @DnDAction : YoYo Games.Common.Set_Global
	/// @DnDVersion : 1
	/// @DnDHash : 0FCEFA2D
	/// @DnDParent : 51FD35EC
	/// @DnDArgument : "value" "3"
	/// @DnDArgument : "var" "global.selectedPlayer"
	global.selectedPlayer = 3;
}