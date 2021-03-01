/// @description Sounds

if (timer == 200)
{
	audio_play_sound(sfxWoodChop8,1,false);
}
if (timer == 190)
{
	audio_play_sound(sfxWoodChop9,1,false);
}
if (timer == 180)
{
	audio_play_sound(sfxWoodChop11,1,false);
}
if (timer == 170)
{
	audio_play_sound(sfxTreeFall,1,false);
}

if (timer < 0)
{
	instance_destroy();	
}

timer--;

