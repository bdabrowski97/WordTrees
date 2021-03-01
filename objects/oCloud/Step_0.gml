/// @description Cloud Movement

x = x - floatSpeed;

if (x < 0) // start timer at left edge of screen
{
	despawnTime--;	
}

if (despawnTime < 120) // fade out cloud
{
	image_alpha = image_alpha - 0.05;	
}

if (despawnTime < 0) // despawn cloud
{
	instance_destroy();	
}


// Adjusts image based on time of day

if (global.TimeOfDay < 3)
{
	image_index = 0;	
}

if (global.TimeOfDay > 3)
{
	image_index = 1;	
}

if (global.TimeOfDay > 6)
{
	image_index = 2;	
}


