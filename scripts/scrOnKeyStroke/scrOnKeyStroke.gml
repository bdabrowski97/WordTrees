/// @param char

char = argument0;

if (global.NextKey == char) { //correct key entry
	
		scrWoodChopSound();
		
		global.CorrectKey = true; // activates animations and validates key entry
		
		global.UserWord = global.UserWord + char; // appends user string
		
		global.CurrentCharNum++; // moves location of next key to push
		
		if (global.CurrentWord == global.UserWord) // if full word is typed
		{ 
			global.Time = oGameMaster.maxTime; // reset time back to max
			
			global.FinishedWord = true; // queues all special effects to occur
			
			scrVisualFXManager(1); // manages different visual effects
			
			
			global.CurrentWord = scrDictionary(); // sets new word to be typed
			global.UserWord = ""; // resets user word
			score += addScore; // adds to score --> WILL ADJUST LATER
			global.dayValue++; // used for affecting time of day
			global.CurrentCharNum = 1; // resets location of key
			global.NextKey = string_char_at(global.CurrentWord,0); // finds first key of the new word
		}
		
		else 
		{ 
			global.NextKey = string_char_at(global.CurrentWord, global.CurrentCharNum);
		}
}

else { // incorrect key entry
	global.Hearts--;	
	/*global.KeyStrokesOn = false;
	hitStun = 0;*/
	audio_play_sound(sfxWrongKey,1,false);
}