extends DrawnSprite

# meta-name: Object Template
# meta-description: Serves as a template for in-game objects
# meta-default: true
# meta-space-indent: 4

func _ready():
	object_setup()


func _physics_process(_delta):
	object_tick()


func _process(delta):
	object_process(delta)


#--- Object functions
