/// @description Timer and redirect

timerTrue = timer / 60;

timer--;

if (timer < 0)
{
	
	room_goto(roomStandardMode);	
}

if (keyboard_check_pressed(vk_enter))
{
	room_goto(roomStandardMode);	
}