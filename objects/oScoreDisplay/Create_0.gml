/// @description Grab Highscore from text file

var file = file_text_open_read("highscore.txt");
hiscore = real(file_text_read_string(file));
file_text_close(file);



