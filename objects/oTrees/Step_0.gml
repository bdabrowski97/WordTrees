/// @description Goto

timer--;

if (timer < 0)
{
	timer = -1;	
	if (x > gotox) 
	{
		x = x-5;	
	}
	
	if ( y < gotoy)
	{
		
		y = y+5;	
	}
	
	
}
