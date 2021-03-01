/// @description Change Song

if (global.TimeOfDay == 8)
{
	audio_stop_sound(sfxForestAmbience);
	instance_create_layer(x,y,"Instances",oJukeBoxNight);
	instance_destroy();
}