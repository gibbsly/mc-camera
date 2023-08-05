# mc-camera
A camera datapack, currently in development

## Installation 
The datapack and resourcepack go in the usual places, with [this](https://github.com/gibbsly/mc-camera/commit/d39dfd73eecfc90716dde52d0b53e360b98dbd6c) commit this now requires the use of snapshot [23w31a](https://www.minecraft.net/en-us/article/minecraft-snapshot-23w31a) due to the use of macros 

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
