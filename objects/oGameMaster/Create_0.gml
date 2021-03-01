/// @description Default Values for Game

randomize();

global.CorrectKey = false; // activates swinging animation and other things
global.CurrentWord = scrDictionary(); // Current word that needs to be spelled
global.NextKey = string_char_at(global.CurrentWord,0); // next key that needs to be pressed
global.UserWord = ""; // string of correct letters the player has entered
global.CurrentCharNum = 1; // location of next key to be entered in string

global.PreviousWord = "";
global.GamePaused = false;

global.FinishedWord = false; // calls on other objects to use special effects when a word is finished

global.TimeOfDay = 0; // determines background and cloud color
					// 0 == day, 1 == evening, 2 == night
					
global.dayValue = 0; // used to affect global.TimeOfDay number

score = 0; // score
addScore = 1; // points gained for spelling a word
hitStun = 0; // used to prevent typing, unused

maxTime = 60 * 5; // max amount of time to complete a word
global.Time = maxTime; // current time

global.Hearts = 3; // mistakes that can be made

global.KeyStrokesOn = true; // whether or not the player can type in the game 

currentHeartFrame = 0; // used for heart animations in GUI

// Highscore code

highscore = 0; // current highscore

// loads high score
if (file_exists("highscore.txt"))
{
	var file = file_text_open_read("highscore.txt");
	var int = real(file_text_read_string(file));
	highscore = int;
	file_text_close(file);
}