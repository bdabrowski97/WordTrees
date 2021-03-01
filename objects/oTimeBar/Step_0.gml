/// @description shrinking Effect

// convert the global time to a percentage and adjust image_xscale to match percentage

image_xscale = global.Time / oGameMaster.maxTime;
//image_xscale = timerTracker;

if (image_xscale < .25)
{
	
	sprite_index = sTimeBar2;	
}

else
{
	
	sprite_index = sTimeBar;	
}

if (global.KeyStrokesOn == false)
{
	sprite_index = sTimeBar3;	
}