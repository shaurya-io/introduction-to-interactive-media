# Introduction to Interactive Media - Final Project 
## Shaurya Singh - ss11077
### Using an Ultrasonic Sensor to create a Bomb Diffusal Puzzle Game

Following on from my previous weekly assignment in which I had demo'd a makeshift sonar system, I fleshed the idea out into a full-fledged game. The concept of this game is simple: evade the sonar system while solving an on-board puzzle. If you're detected by the sonar, a buzzer buzzes and you lose the game; on the flipside, if you get 7 combinations on the puzzle correctly, you win and successfully disarm the bomb.

This project uses an ultrasonic distance sensor, 4 buttons, 3 LEDs, a servo motor, and a piezo buzzer. The schematic for the project can be seen below:

![Final Project Schematic](https://github.com/shaurya-io/introduction-to-interactive-media/blob/master/finalProject/Schematic_FinalProject.PNG)

**In the previous version of this project, we had seen the following levels of progress**:

1. Hardware and mounting the breadboard + ultrasonic sensor on the servo motor.

![Hardware Sample](https://github.com/shaurya-io/introduction-to-interactive-media/blob/master/November%2024/Sonar_Demo.gif)

2. Processing side output.

![Processing Demo](https://github.com/shaurya-io/introduction-to-interactive-media/blob/master/November%2024/Sonar+Processing.gif)

### Adding the Puzzle Layer to the Sonar Project 

As shown above, I had made decent progress on the sonar concept in a previous weekly project, which meant that to successfully turn it into my final project idea, I needed to integrate into the circuit an LED+Button based puzzle that would form the crux of the game. My experimentation with different kinds of puzzles has been expounded upon in the Journal file, but for the purposes of this readme, we will delve into a brief description of what the on-board puzzle is.

The concept of the puzzle is very simple, and intentionally so. The LEDs flicker in a pattern, and the player is expected to match the pattern on the RGB buttons. In addition, the yellow button on the side is a failsafe that allows the player to temporarily disable the buzzer functionality of the sonar, thereby allowing the player some advantage and helping stay in the game for longer. 

**A [video demo](https://drive.google.com/file/d/1pQhn5IntuLpZ6R4alW6kDmqzfScXuJI3/view?usp=sharing) of the game has been linked.**
