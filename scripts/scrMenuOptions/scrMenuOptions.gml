///SFXChoice(num)
/// @Description MenuType(num)
/// @param MenuOption

menuChoice = argument0;

if (menuChoice == 0)
{
	game_end();	
}

if (menuChoice == 1)
{
	room_goto(roomRedirectToStandardMode);	
	
}