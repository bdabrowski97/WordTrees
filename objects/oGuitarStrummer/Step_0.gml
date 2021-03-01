/// @description Strums the Guitar

guitarTimer--;

if (guitarTimer < 0)
{
	
	scrStrumGuitar(irandom_range(0,7));
	guitarTimer = irandom_range(1,20) * 60;	
}
