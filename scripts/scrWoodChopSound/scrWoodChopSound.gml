wood[0] = sfxWoodChop2;
wood[1] = sfxWoodChop3;
wood[2] = sfxWoodChop4;
wood[3] = sfxWoodChop5;
wood[4] = sfxWoodChop6;
wood[5] = sfxWoodChop7;
wood[6] = sfxWoodChop8;
wood[7] = sfxWoodChop9;
wood[8] = sfxWoodChop10;
wood[9] = sfxWoodChop11;

num = irandom_range(0,array_length_1d(wood)-1);

audio_play_sound(array_get(wood,num),2,false);
