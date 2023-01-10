# mc-camera
A camera datapack, currently in development

## Installation 
The datapack and resourcepack go in the usual places, the file `command_storage_rgb.dat` goes in the data folder of the world you have the datapack installed in, this is a required file.

For this to function at all you need at least 8gb of ram allocated to minecraft, this is so the storage can be loaded. 

## Use

### Image capturing
to take a picture you have 2 options 

#### `cam:take_picture` 
Takes an image all in one tick, this freezes the game for the duration of the image capture

#### `cam:take_picture_async`
Takes and image without slowing the game down, at least in theory

### Image displaying
#### `cam:display_picture`
shows the image in chat

#### `cam:display_picture_raw`
displays an image based on the raw data in storage

#### Data output
the resolved text for the image is output to the storage `cam:main out`