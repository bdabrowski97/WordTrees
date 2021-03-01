/// @description Change Music

if (global.TimeOfDay == 0)
{
	audio_stop_sound(sfxForestAmbienceNight);
	instance_create_layer(x,y,"Instances",oJukeBox);
	instance_destroy();
}
