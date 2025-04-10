extends AnimatedSprite2D

var sprite_displayed
var sprites = Sprites.new()

func _physics_process(_delta):
	if sprite_displayed == true:
		show()
	else:
		hide()
		
	sprite_displayed = false


func _on_animation_changed() -> void:
	var sprite_entry = sprites.sprite_database[animation]
	var shape = sprite_entry["mask"]["shape"]
	if shape == "RECTANGLE":
		var collision_size = sprite_entry["mask"]["collision_rectangles"][1]
		var collision_position = collision_size / 2 + sprite_entry["mask"]["collision_rectangles"][0]
		collision_position -= sprite_entry["origin"]
		
		var parent = get_parent().get_parent()
		if parent.get_node("CollisionShape2D"):
			parent.get_node("CollisionShape2D").shape.size = collision_size
			parent.get_node("CollisionShape2D").position = collision_position
	else:
		var collision_size = sprite_entry["mask"]["bounding_box"][1]
		var collision_position = collision_size / 2 + sprite_entry["mask"]["bounding_box"][0]
		collision_position -= sprite_entry["origin"]
		
		var parent = get_parent().get_parent()
		if parent.get_node("CollisionShape2D"):
			parent.get_node("CollisionShape2D").shape.size = collision_size
			parent.get_node("CollisionShape2D").position = collision_position
