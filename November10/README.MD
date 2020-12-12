## Controlling LEDs with a Digital and an Analog Sensor 

For this week's project, we had to design a system which incorporates a set of LEDs, which are somehow controlled using a digital and an analog sensor. 

To realize this goal, I decided to build an automatic light system that shuts off the LEDs when the room is brightly lit. When designing the idea, I noticed that I'd need to program 3 modes for the system:

1. **Always ON** - so that the lights are on irregardless of ambient lighting.

![Always On](https://github.com/shaurya-io/introduction-to-interactive-media/blob/master/November10/Always%20On.png)

2. **Always OFF** - so that the lights are off irregardless of ambient lighting.
3. **Ambient Lighting Sensing Mode** - so that the lights can decide whether to be on or off depending on how brightly lit the surrounding environment is.

To create this system, I used 2 LEDs and an LDR to detect the amount of ambient light. In addition, I used a potentiometer to help the user determine which mode the system functions in. 

The schematic for this system is attached below:

