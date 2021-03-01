/// @description Floating Word Effect

if (score % 30 == 0) // every 30 words, restore hearts
{
	if (playCoin == 1 && score != 0)
	{
		audio_play_sound(sfxTenTreesCut,1,false);	
		playCoin--;
		global.Hearts = 3;
	}
	
}


if (global.FinishedWord == true) 
{
	global.FinishedWord = false;	
}

framesleft--;
if (framesleft < 61) 
{
		alphalevel = alphalevel - 0.1;
}

if (framesleft < 0)
{
	instance_destroy();	
}

time--;

if (time < 0)
{
	if (startingColor == 0)
	{
			startingColor = 1;
	} 
	else 
	{
		startingColor = 0;	
	}
	
	time = colorTimer;
		
}

y = y- 1;