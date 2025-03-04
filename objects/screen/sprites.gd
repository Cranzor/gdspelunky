extends GMObject
##--- having screen as a CanvasLayer is simpler but causes issues with not having access to some functions.
##--- this holder object allows for grabbing those functions

func _ready():
	object_setup()
	sprites_holder = Node2D.new()
	sprites_holder.name = "HeldSprites"
	add_child(sprites_holder)

#--- Object functions
