The prime focus of this project was to manipulate an image in a way that creates an aesthetic experience for the viewer. To this end, I wanted to explore Processing in 3D using the P3D renderer. One of the very first ideas I had about the prompt was to somehow replace the pixels in a given image with 3D lines - and I tried to find a meaningful way to decide the length of those lines. 

In Version 1, I used the image thrice, and constructed 3 groups of lines which begin in the plane of the image and lie in the Z-space facing away from the viewer. The first group derives its lengths from the R-values of every pixel (from the RGB system), the second one uses the G-values, and (no surprises here) the third one uses the B-values.

![Version 1 Screen Recording](https://github.com/shaurya-io/introduction-to-interactive-media/blob/master/October13/Version%201/Version%201%20Screenshot.gif)

In Version 2, I decided to get creative with the lengths using the random() function. This version sets the color of the lines from the pixel they correspond to, and then makes them vary between the points (x,y,k) and (x,y,-k), where x and y represent the coordinates of the relevant pixel and k is a random number between 1 and 500.

![Version 2 Screen Recording](https://github.com/shaurya-io/introduction-to-interactive-media/blob/master/October13/Version%202/Version%202%20Screenshot.gif)
