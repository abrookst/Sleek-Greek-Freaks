/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 5B14D8ED
/// @DnDArgument : "var" "global.selectedPlayer"
/// @DnDArgument : "value" "2"
if(global.selectedPlayer == 2)
{
	/// @DnDAction : YoYo Games.Common.Set_Global
	/// @DnDVersion : 1
	/// @DnDHash : 09F55BB1
	/// @DnDParent : 5B14D8ED
	/// @DnDArgument : "value" "1"
	/// @DnDArgument : "var" "global.selectedPlayer"
	global.selectedPlayer = 1;
}