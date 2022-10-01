/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 0857F386
/// @DnDArgument : "var" "global.selectedPlayer"
/// @DnDArgument : "value" "3"
if(global.selectedPlayer == 3)
{
	/// @DnDAction : YoYo Games.Common.Set_Global
	/// @DnDVersion : 1
	/// @DnDHash : 462B4A83
	/// @DnDParent : 0857F386
	/// @DnDArgument : "value" "2"
	/// @DnDArgument : "var" "global.selectedPlayer"
	global.selectedPlayer = 2;
}