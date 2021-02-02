### Script to save my iterations as a gif

# Create Gif
# [steps taken from this tutorial](http://www.nagraj.net/notes/gifs-in-r/)

library(magick)

## list file names in interations folder
imgs <- list.files("iterations", full.names = TRUE)

#For each filename in imgs, read the image and store it in img_list
img_list <- lapply(imgs, image_read)

## join the images together
img_joined <- image_join(img_list)

## animate at 2 frames per second
img_animated <- image_animate(img_joined, fps = 4)

## view animated image
img_animated

## save to disk
image_write(image = img_animated,
            path = "plastic_pollution.gif")




#Note to self: I'm not sure if I want to do this next step. I think it'll save space on my computer, but then I can't get those pngs. But I don't think I'd need them. I could always add onto the gif...

#file.remove(#dir("iterations", #full.names = TRUE)) #delete all the png files now that I have a gif