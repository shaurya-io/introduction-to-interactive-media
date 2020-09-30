For this project, I decided to take inspiration from a popular Instagram filter named ColorBlind. The basic idea is that the user is presented with a set of identical shapes (circles, in this case), and one of them is of a slightly different color than the rest. As levels progress, this color shift continues to decrease, making it progressively harder for the user to identify the correct outlier colored shape.

As you may recall, I ran into a bunch of randomization problems because I used a random(1,4) implementation to select the color schemes for the shapes (for my game, these were 3 rectangles). However, this led to a 1/9 chance that all rectangles would load with the exact same fill(), a critical error in the game.

I rectified this by using the random(1,4) number to define the scenarios and then hard-coding the order that corresponds to each scenario. For instance, if random(1,4) is 1, the order of the rectangles would be 011 (zero denoting the outlier), for 2 it'd be 101, and for 3 it'd be 110. Using this scenario encoding, one can then assign color schemes in accordance with the 0 and 1 values.

Here is a screenshot of the final product:
![Week 3 Assignment Screenshot](https://github.com/shaurya-io/introduction-to-interactive-media/blob/master/September%2029/Week%203%20Assignment%20Screenshot.png)



Here is a screenshot of the Instagram filter which inspired me:





![Week 3 Inspiration Screenshot](https://github.com/shaurya-io/introduction-to-interactive-media/blob/master/September%2029/Week%203%20Inspiration%20Screenshot.jpeg)
