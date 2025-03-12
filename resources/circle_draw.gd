extends Node

func create_empty_image(x, y):
	var image = Image.create_empty(x, y, false, Image.FORMAT_RGBA8)
	return image

func mirror_points_8(x: int, y: int)->Array:
	return [Vector2( x,  y), Vector2( y,  x), Vector2(-x,  y), Vector2(-y,  x), Vector2( x, -y), Vector2( y, -x), Vector2(-x, -y), Vector2(-y, -x)]

func create_bresenham_circle(r): #--- adapted from here https://funloop.org/post/2021-03-15-bresenham-circle-drawing-algorithm.html
	var points: Array = []
	var x: int = 0
	var y: int = -r
	var F_M: int = 1 - r
	# Initial value for (0,-r) for 2x + 3 = 0x + 3 = 3.
	var d_e: int = 3
	# Initial value for (0,-r) for 2(x + y) + 5 = 0 - 2y + 5 = -2y + 5.
	var d_ne: int = -(r << 1) + 5
	points.append_array(mirror_points_8(x, y))
	while x < -y:
		if F_M < 0:
			F_M += d_e
		else:
			F_M += d_ne
			d_ne += 2
			y += 1
		d_e += 2
		d_ne += 2
		x += 1
		points.append_array(mirror_points_8(x, y))
	var image = create_empty_image((r * 2) + 1, (r * 2) + 1)
	for point in points:
		image.set_pixel(point.x + r, point.y + r, Color.WHITE)
	var texture = ImageTexture.create_from_image(image)
	print(texture.get_size())
	return texture
