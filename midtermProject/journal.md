# Midterm Project - Introduction to Interactive Media, NYU Abu Dhabi 
## Shaurya Singh - ss11077
## Fall 2020

### Journal Entry #1: Preliminary Thoughts 

For the purpose of the midterm project in this course, I am interested in exploring Google's [Teachable Machine Tool](https://teachablemachine.withgoogle.com/), which allows in-browser recognition for sounds, images, and body poses. 

At present, I have two ideas in my head, and both seem quite appealing. The first is a Kinect-style dancing game which uses Teachable Machine to check if the user is following along with the dance moves on the screen, and thereby scoring in accordance with the accuracy of user coordination. The only potential drawback in this idea is that I am not a dancer myself, so even though I may train the model using elementary moves, I wouldn't enjoy the game much.

The second idea is to create a Rock-Paper-Scissor bot, which alternates randomly between the three poses and scores by recognizing the user pose and comparing it to its own pose using the set of rules for the game.

### Journal Entry #2: October 22, 2020

After playing around with Teachable Machine a bit, I have come to the following conclusions:

1. Most of my ideas seem extremely derivative - I realized that Omar built an extremely similar project to my Rock-Paper-Scissor bot idea. Perhaps it'd be a better idea to build the bot with some sort of Arduino hardware to go alongwith it.

2. Dan Shiffman's tutorials on Youtube have the similar projects, including controlling the snake game with images and audio. It'd be very difficult for me to use his starter code and modify it into something remarkably different, because his projects are already pretty awesome. Besides, p5.js syntax is not something I want to get into in a time crunch: I'd rather pick it up leisurely than have to debug a new framework with a deadline looming.

### Joural Entry #3: October 24, 2020

I have decided to create my own survival-based version of Agar.io, the classic battle-royale game. Today, I finished designing the collision mechanics and displaying the food (ie, populating the world). In my version, you fight a computer body that starts the game larger than you and therefore immediately preys on you. Your job is to evade your opponent and grow as fast as possible - when you grow larger than the opponent it will begin to go after bits of food in order to grow bigger and eat you - prevent that and eat you opponent first to win the game.


### Joural Entry #4: October 26, 2020

After displaying the food, I moved on to designing the computer opponent - not exactly an AI foe but a body that can rapidly calculate the closest bits of food and will try to beat you to them. In addition, if it's bigger than you, it is coming for you!

### Joural Entry #5: October 27, 2020

All that is left at this point is to create a gameStates function that controls the restart and "press key to play" functionalities. This was done in under an hour.




