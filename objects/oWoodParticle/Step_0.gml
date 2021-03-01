/// @description Movement

image_alpha = image_alpha -  0.01;

if (colorType == 1)
{
	sprite_index = sWoodParticle2;	
}

time--;



if (time > 34)
{
	//image_xscale =- 0.6;
	//image_yscale =- 0.6;
}
else
{
	speed = fallSpeed;

	if (direction > changeTo)
	{
		direction = direction - 8;	
		// direction = direction - 1;	 could be used for something else, like tree completetion
	}
}

if (time < 0)
{
	instance_destroy();	
}

image_angle -= spin;


