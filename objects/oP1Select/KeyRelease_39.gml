/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 73E79AC2
/// @DnDArgument : "var" "global.selectedPlayer"
/// @DnDArgument : "value" "1"
if(global.selectedPlayer == 1)
{
	/// @DnDAction : YoYo Games.Common.Set_Global
	/// @DnDVersion : 1
	/// @DnDHash : 51FA8312
	/// @DnDParent : 73E79AC2
	/// @DnDArgument : "value" "2"
	/// @DnDArgument : "var" "global.selectedPlayer"
	global.selectedPlayer = 2;
}