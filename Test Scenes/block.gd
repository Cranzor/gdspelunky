extends Solid

var up
var down
var left
var right

# Called when the node enters the scene tree for the first time.
func _ready():
	type = "Block" #--- putting this in the ready function since 'type' is declared in DrawnSprite


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
