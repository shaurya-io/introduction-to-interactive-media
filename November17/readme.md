## Creating a Musical Instrument 

For this project, while most of my peers decided to create devices that could play simple notes and were more or less derivatives of different types of keyboards, I decided to lead my investigation in a slightly different direction: musical progression. Progression is the quality of music which involves a crescendo of melodies leading to a satisfying conclusion, or in the youth's slang, a **drop**. Hans Zimmer, one of the most celebrated composers of our time who rose to fame creating background scores for films like Inception, Interstellar, and the Dark Knight franchise, is very famous for his progression-style music that invokes suspense, adding a new layer of depth and grit to the films he works in.

This project takes one of his famous background scores from Interstellar, and uses a sonic distance sensor to create an instrument where the progression of the tune can be controlled using a piece of paper and varying its distance from our "instrument".

![Reference Image](https://github.com/shaurya-io/introduction-to-interactive-media/blob/master/November17/Musical%20Instrument%20image.jpg)

The schematic for this project can be seen below:

![Schematic - Musical Instrument](https://github.com/shaurya-io/introduction-to-interactive-media/blob/master/November17/Schematic_Final.PNG)

### Problems and Challenges

This project, which was actually quite simple in hindsight, was one that I unnecessarily complicated for myself. The reason for this was that I did not know how to use a sonic sensor, and therefore resorted to using an LDR and an object's shadow against a light-source as a makeshift distance sensor. Obviously, this was a far-from-ideal solution that was not reliable - for a musical progression to work, the values fed to the tone function need to increase predictably and not vary randomly, the latter of which was the case with the makeshift light-dependent distance sensor. 

Debugging these problems required two approaches:

a. **Using the right tool for the right job**: This meant replacing the LDR with a sonic sensor that uses sound waves to determine proximity (although by no means a very precise sensor, sonic sensors vary considerably lesser in their readings for the same distances than LDR-based distance setups). In addition, sonic sensors work well over a range of distances whereas the LDR-based setup I initially devised has a minimum distance below which there are no discernable changes in light levels, rendering the sensor unusable.

b. **Debugging using a lot of println()**: My map function was not working properly, and the code error was fixed by manually printing out values to see which values fed to the tone function were the cause of the errors. 
