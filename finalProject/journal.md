# Final Project - Introduction to Interactive Media, NYU Abu Dhabi 
## Shaurya Singh - ss11077
## Fall 2020

### Journal Entry #1: Preliminary Thoughts as of November 26, 2020

During the course of working on the previous weekly assignment, in which I presented a DIY sonar system using a sonic sensor mounted on top of a servo motor, I slowly stumbled upon the idea of making a game out of it, where the task for the player would be to beat the sonar system and get to the center. I imagine that this could be done in an empty room, such as the lounge of my suite. In addition, to make the game harder, I plan to procure another sonic sensor in order to build a more efficient system that traces a 360-degree space, and this will be placed in the center of the room.

Other elements I am thinking of introducing are a buzzer to signify Game Over, as well as a puzzle on the breadboard in the center which needs to be solved while the sonar is active. I am also considering adding a set of proper speakers to the setup and learning how to play music using Arduino, to give the entire project a Mission Impossible like feel.

A rough sketch can be seen below:

![Sketch of the preliminary idea](https://github.com/shaurya-io/introduction-to-interactive-media/blob/master/finalProject/Final%20Project%20Sketch.jpg)

### Journal Entry #2: December 1, 2020

I began to look for a simple enough puzzle to incorporate in my sonar system. It mustn't be too hard because that would make the entire evading the sonar + solving the puzzle action too tricky and hard for most people. Fortunately for me, we had had an entire weekly assignment devoted to puzzles using Arduino, and I remembered some of the more interesting concepts that had been discussed in class. 

I experimented with the memory game, and while it served the purpose, it did not truly replicate the "bomb-diffusing" tension that I wanted the game to have. My second experiment was with the simplest concept - follow the LED patterns and press the buttons corresponding to the colors, and once the player hits a certain number of correct combinations entered via the buttons, the bomb is 'diffused'. In addition, I decided to not include a penalty for wrong button-strokes because I realised that the game would be too hard as it is with the constant hovering of the sonar on your hands.

### Journal Entry #3: December 3, 2020

Today, I began implementing the finer details in the sonar system. This included adding a buzzer that buzzes for 5 seconds every time the sonar detects a breach, as well as a failsafe button that disables this buzzer as a way for the player to stay in the game. I added a few more details to my sonar visualizer, including distance, in/out of range, and an angle value to be displayed towards the bottom of the screen. 

I also wanted to incorporate two sonic sensors at the same time and use them to chart out a 360-degree visualizer as part of my final project, but could not execute on it. In particular, the challenges included formatting the dual-channel data coming in from the two sensors and then parsing the strings recieved by Processing in a reliable manner. As you may notice, my current parsing algorithm that isolates values from the string recieved by Processing is quite complicated (or at least was for me - I view it as an achievement that I was able to accomplish that), and increasing the length of the recieved string by 2x and having to parse everything into seperate variables seemed too much grunt work with very little reward - leading me to reject the idea.

**The double-sensor concept that wasn't to be**:

![Double-sensor Concept](https://github.com/shaurya-io/introduction-to-interactive-media/blob/master/finalProject/Double-sensor%20concept.jpg)


### Journal Entry #4: December 6, 2020

Now that the sonar implementation was complete, I began to work on the puzzle part of the project. For the puzzle, I would need to write functions that create the LED patterns, display the pattern, a function that keeps track of score, and a win/loss/restart function. Creating this puzzle was quite easy, because I had decided to go with a simple idea and not unneccesarily complicate things for myself (an important lesson I learnt on a previous project where I tried to build by own distance sensor using an LDR when, spoiler alert, a sonic distance sensor is included in the SparkFun Kit). 

In addition, I identified the sonar visualizer as a potential improvement point, and noted it down as an area for further work.

### Journal Entry #5: December 7, 2020

Made some minor improvements to the sonar visualizer, including adding a fade effect to the lines in order to achieve a smoother transition effect. Integrated the buzzer with the Arduino code, fairly straightforward. 

**THIS IS THE POINT WHERE I LOST EVERYTHING THAT I HAD WORKED ON DUE TO A POWER CUT IN MY ROOM, AND MY WORK BEING ON A UNIVERSITY iMAC WHICH WIPES ALL DATA CLEAN WITH EVERY REBOOT.**

### Journal Entry #6: December 8, 2020

I do not have much recollection of these two days, except that I had to recreate as much of the project as I could from memory. I considered requesting an extension but decided against it, somewhat confident that I could present something decent by the deadline. All my sonar fine-tuning of the visualizer was out of the window, and we were back to the basics. Coffee, code, more coffee, debugging, repeat.

### Journal Entry #7: December 9, 2020

Same as the 8th. Setting up the Sonar again was relatively easy, although getting the draw function for each individual element had been a trial-and-error exercise the first time as well and took a lot of time the second time around. _I used the same technique that I had used for my very first self-portrait assignment, where I created a grid using a while loop and used the grid as a reference to create my artwork_, and in this case, my sonar drawing. The recreation of the on-board puzzle brought with itself a lot of println() debugging yet again, but it's only a matter of time before you iron out the kinks. 

### Journal Entry #8: December 10, 2020, 5pm GST

Slept for 12 hours and woke up the next morning. Felt great and well-rested after two extremely gruelling days. :)




