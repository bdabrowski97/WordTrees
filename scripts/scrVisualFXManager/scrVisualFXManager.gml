///SFXChoice(num)
/// @Description FXType(num)
/// @param num



num = argument0;

if (num == 1) // creates a floating after image of correctly typed word
{
	global.PreviousWord = global.CurrentWord;
	instance_create_layer(oTargetText.x,oTargetText.y - 48,"Particle_Instances",oFloatingPreviousWord); // spawns the special effect
}

if (num == 2) // creates wood chips when cuttings
{
	instance_create_layer(oAxe.x,oAxe.y,"Particle_Instances",oWoodParticle);	
	
}

if (num == 3) // creates clouds
{
	var amtClouds = irandom_range(0,2);
	for (var i = 0; i < amtClouds; i++)
	{
		instance_create_layer(room_width,irandom_range(100,300),"Cloud_Layer",oCloud);
	}
}

