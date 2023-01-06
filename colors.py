from PIL import Image
import glob
from functools import reduce

all_images = glob.glob("*.png")
for img in all_images:
	# Load the image
	img = Image.open(img).convert('RGB')
	pixels = img.load() 
	width, height = img.size
	print(all_images[0])
	function_name = ("output/",all_images[0].replace('.png', '.mcfunction'))
	function_name = reduce(lambda x, y: f"{x}{y}" if x != "" else y, function_name)
	for y in range(height):
		color_objects = ["["]
		for x in range(width):
			r, g, b = pixels[x, y]
			color_objects += ("{",f"r:{r},g:{g},b:{b}","}")
			if x < 15:
				color_objects += [", "]
		color_objects += ["]"]
		color_objects = reduce(lambda x, y: f"{x}{y}" if x != "" else y, color_objects)
		command = ("execute if score u= cam.main matches ",y," run data modify storage cam:temp uv set value ",color_objects)
		command = reduce(lambda x, y: f"{x}{y}" if x != "" else y, command)
		with open(function_name, "a") as myfile:
			myfile.write(str(command) + "\n")