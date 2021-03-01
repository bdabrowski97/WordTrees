/// @description Input Detection

// Time of Day Functions
if (global.dayValue == 5)
{
	global.TimeOfDay++;
	global.dayValue = 0;
	if (global.TimeOfDay > 15) { global.TimeOfDay = 0;}
}



// Heart Functions

currentHeartFrame++;

if (global.Hearts > 3) // doesn't allow hearts to go past max
{
	global.Hearts = 3;	
}

if (!instance_exists(oCloud))
{
	scrVisualFXManager(3); // spawn clouds	
}

if (global.GamePaused == false && global.Hearts > 0) // counts down time if game active
{
	global.Time--;
}

if (global.Time < 0) // take away a heart if timer runs out
{
	global.Hearts--;
	global.Time = maxTime;
	audio_play_sound(sfxWrongKey,1,false);
}


if (currentHeartFrame > 294) { currentHeartFrame = 0; }  // heart animations

/*if (global.GamePaused == false && global.KeyStrokesOn == false) // pauses player inputs
{
	hitStun--;	
}

if (hitStun < 0) // turns back on player inputs
{
	hitStun = 0;
	global.KeyStrokesOn = true;
}*/


// Key Stroke Detection

if (keyboard_check_pressed(vk_escape) && global.Hearts > 0) // pauses game
{
	if (global.GamePaused == false)
	{
		global.GamePaused = true;
		global.KeyStrokesOn = false;
	}
	else 
	{
		global.GamePaused = false;	
		global.KeyStrokesOn = true;
	}
}

if (global.Hearts < 1 && keyboard_check_pressed(vk_enter)) // Game over && Saving Highscore
{
		if (!file_exists("highscore.txt")) // create highscore file and write to it 
		{
			var file = file_text_open_write("highscore.txt");
			file_text_write_string(file,score);
			file_text_close(file);
		}
		else // check and compare score to high score
		{
			var file = file_text_open_read("highscore.txt");
			var int = real(file_text_read_string(file));
			file_text_close(file);
			
			if (score > int) // overwrite highscore
			{
				var file = file_text_open_write("highscore.txt");
				file_text_write_string(file,score);
				file_text_close(file);
				
			}
			
		}
		
	
		room_goto(roomResults); // redirect to results screen
	
}

if (global.KeyStrokesOn == true && global.Hearts > 0) // if not paused and not out of hearts
{

	if (keyboard_check_pressed(ord("A"))){
		scrOnKeyStroke("a");
	
	}

	if (keyboard_check_pressed(ord("B"))){
		scrOnKeyStroke("b");
	
	}

	if (keyboard_check_pressed(ord("C"))){
		scrOnKeyStroke("c");
	}

	if (keyboard_check_pressed(ord("D"))){
		scrOnKeyStroke("d");
	
	}


	if (keyboard_check_pressed(ord("E"))){
		scrOnKeyStroke("e");
	
	}


	if (keyboard_check_pressed(ord("F"))){
		scrOnKeyStroke("f");
	
	}


	if (keyboard_check_pressed(ord("G"))){
		scrOnKeyStroke("g");
	
	}


	if (keyboard_check_pressed(ord("H"))){
		scrOnKeyStroke("h");
	
	}


	if (keyboard_check_pressed(ord("I"))){
		scrOnKeyStroke("i");
	
	}


	if (keyboard_check_pressed(ord("J"))){
		scrOnKeyStroke("j");
	
	}


	if (keyboard_check_pressed(ord("K"))){
		scrOnKeyStroke("k");
	
	}


	if (keyboard_check_pressed(ord("L"))){
		scrOnKeyStroke("l");
	
	}


	if (keyboard_check_pressed(ord("M"))){
		scrOnKeyStroke("m");
	
	}


	if (keyboard_check_pressed(ord("N"))){
		scrOnKeyStroke("n");
	
	}


	if (keyboard_check_pressed(ord("O"))){
		scrOnKeyStroke("o");
	
	}


	if (keyboard_check_pressed(ord("P"))){
		scrOnKeyStroke("p");
	
	}


	if (keyboard_check_pressed(ord("Q"))){
		scrOnKeyStroke("q");
	
	}


	if (keyboard_check_pressed(ord("R"))){
		scrOnKeyStroke("r");
	
	}


	if (keyboard_check_pressed(ord("S"))){
		scrOnKeyStroke("s");
	
	}


	if (keyboard_check_pressed(ord("T"))){
		scrOnKeyStroke("t");
	
	}

	if (keyboard_check_pressed(ord("U"))){
		scrOnKeyStroke("u");
	
	}

	if (keyboard_check_pressed(ord("V"))){
		scrOnKeyStroke("v");
	
	}


	if (keyboard_check_pressed(ord("W"))){
		scrOnKeyStroke("w");
	
	}


	if (keyboard_check_pressed(ord("X"))){
		scrOnKeyStroke("x");
	
	}


	if (keyboard_check_pressed(ord("Y"))){
		scrOnKeyStroke("y");
	
	}


	if (keyboard_check_pressed(ord("Z"))){
		scrOnKeyStroke("z");
	
	}

	if (keyboard_check_pressed(vk_space)){
		scrOnKeyStroke(" ");
	}

}