/// @description Menu Functionaility

if (place_meeting(x,y,oMouse))
{
	image_index = 1;
	if (mouse_check_button_pressed(mb_left) && !instance_exists(oHelpBox))
	{
		instance_create_layer((room_width/2) - 384 ,(room_height/2) -288 ,"GUI",oHelpBox);
		audio_play_sound(sfxWoodChop9,1,false);
	}
	
}
else 
{
	image_index = 0;	
}