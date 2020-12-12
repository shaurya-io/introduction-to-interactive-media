## Communicating between Arduino and Processing via Serial.print()

For this assignment, I decided to make a sonar-esque system that uses the sonic distance sensor mounted on top of a servo motor. The distances and angles are then printed out in the Serial channel and communicated to Processing, where we can 'graph' these values into a visual system that resembles a sonar.

The wiring for this project is rather simple, as most of the interesting stuff happens on the Processing side. For Arduino, all we need to do is to fix a sonic sensor on the breadboard, make the connections to Arduino, and then mount the entire breadboard onto a servo motor which itself is connected to the breakdboard (and to Arduino) in order to draw power and determine the values it covers in its movements.

Here's the schematic:

![Sonar_Schematic](https://github.com/shaurya-io/introduction-to-interactive-media/blob/master/November%2024/Schematic_Final.PNG)

The hardware for this project looks like this:

![Sonar_demo Hardware](https://github.com/shaurya-io/introduction-to-interactive-media/blob/master/November%2024/Sonar_Demo.gif)

On the Processing side, the output looks like this:

![Sonar_Processing](https://github.com/shaurya-io/introduction-to-interactive-media/blob/master/November%2024/Sonar+Processing.gif)

**This is also the idea I intended to pursue further for my Final Project - in fact, I began working on it right after the demo for this weekly assignment and forgot to upload the standalone code for this demo in this folder. By the time I realized my forgetful mistake, the code had already been heavily modified and I didn't want to break things by trying to isolate the demo back to its initial state.**

To take a look at the final version of this project, I invite you to check out my finalProject folder, where this demo has been combined with an onboard puzzle to create a (albeit a bit cliched) "bomb-diffusing" experience.
