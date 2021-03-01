# WordTrees
<b> This is my second full game I've made in GMS2, the first being Conway's the Game of Life.<br> That game can be found here https://github.com/bdabrowski97/ConwayGameOfLifeGML </b>

<br><br>

<b>The objective in WordTrees is to type as many words/phrases you can before you run out of hearts.</b><br>
![alt text](https://github.com/bdabrowski97/WordTrees/blob/master/sprites/sHeart/01f1b2cc-48aa-429d-9523-a29a78f81f98.png)![alt text](https://github.com/bdabrowski97/WordTrees/blob/master/sprites/sHeart/01f1b2cc-48aa-429d-9523-a29a78f81f98.png)![alt text](https://github.com/bdabrowski97/WordTrees/blob/master/sprites/sHeart/01f1b2cc-48aa-429d-9523-a29a78f81f98.png)
<br><br>

For every wrong key input while spelling, you lose a heart.<br> 
Or, if you take longer than 5 seconds to finish a word, you lose a heart.<br> 
If you lose all three hearts the game ends.<br>
Hearts are restored every 30 points scored.<br>
<br>

<h1><b>FEATURES</h1><b>
 <br>
  
  Real wood chopping action! <b>Watch those chips fly!</b><br>
  Background ambience! <b>Somewhat randomly generated music!</b><br>
  A <i>quality</i> MS-Paint inpsired graphical style! <b>Somewhat randomly spawned clouds!</b><br>
  A day-night cycle! <b>Feel energized by the day and relaxed by the moonlight as you chop some wood!</b><br>
  400 words and phrases to type! <b>Thats a big array of text!</b><br>
  A pause button! <b>Hides the current word to be typed, to maintain with regulatory guidelines of fairplay and sportsmanship!</b><br>
  A highscore system! <b>A quality text file that totally cannot be manipulated to cheat if you don't know about it!</b><br>
  No memory leaks! <b> I hope! </b><br>
  
  <br>
  

  
<h1><b>Details and Nerd Stuff</b></h1> <br>

I created the random music by first recording 7 guitar strums/piano chords in FL Studio. <br>
Then, I turned these into sound effects that would be played via a timer. <br>
When first starting the game, the timer always starts at a 1 second count down.<br>
Once the timer hits zero, it calls a script to play a random chord from an array of guitar/paino chords. <br>
After playing the chord, the timer is then set to a random interval to wait before playing another random chord.<br>
This allowed me to create a vibe for the game without having to fully create a soundtrack. <br>
Interestingly, sometimes the game will resolve cadences on its own. It's pretty cool. <br>
I'm looking to expand on this type of sound design in future projects, maybe mixing predetermined music with randomized aspects. <br>
<br>

The clouds are spqwned when none exist in the room.<br>
A random number from 1-3 clouds will be spawned. <br>
The closer the cloud is to the ground, generally, the bigger it will be. <br>
The size of the cloud affects their movement speed. <br>
Smaller clouds move slower than larger ones, this is done to emulate a sense of distance from the foreground. <br>
<br>

I'm proud of how the keyboard input mechanics came out. <br>
I was able to simplify and generalize the inputs into a script, which made adding new key inputs very easy. <br>
Every correct key entered, the game just appeneds a "user" string and compares it to the "target" string of the word. <br>
Overall, looking at the code itself, it is fairly simple and easy to understand. <br>
Although, it is a bit scattered with global variables, most if not all game relevant mechanics are present within a single GameMaster object. <br>
This GameMaster object then references a bunch of scripts to keep the code cleaner looking and to avoid repeating lines of code 27 times in a row. <br>
<br>
The project says I've worked on it for a little over 24 hours, I think it came out pretty nice all thingd considered. <br>

<br>

 <h1><b>Credits</h1></b><br>
  I got the sound effects for the wood cutting noises and background ambiences from freesound.org.<br>
  Specifically, I used these: <br>
  
  <i>Log Falling in Forest.wav</i> by kev_durr <br>
  https://freesound.org/people/kev_durr/sounds/396509/ 
  (License: https://creativecommons.org/licenses/by/3.0/) <br>
  
  <i>night_forest_owl.WAV</i> by thom_cookes <br>
  https://freesound.org/people/thom_cookes/sounds/475376/  
  (License: https://creativecommons.org/publicdomain/zero/1.0/) <br>
  
  <i>Coins 1</i> by ProjectsU012 <br>
  https://freesound.org/people/ProjectsU012/sounds/341695/
  (License: https://creativecommons.org/licenses/by/3.0/) <br>
  
  <i>forest summer Roond 022 200619_0186.wav</i> by klankbeeld <br> 
  https://freesound.org/people/klankbeeld/sounds/532424/ (License: https://creativecommons.org/licenses/by/3.0/) <br>
  
  <i>chop.wav</i> by hazure <br> 
  https://freesound.org/people/hazure/sounds/23700/ (License: https://creativecommons.org/licenses/by/3.0/) <br>
  
