extends DrawnSprite

# meta-name: Object Template
# meta-description: Serves as a template for in-game objects
# meta-default: true
# meta-space-indent: 4

func _ready():
	object_setup(self)

func _physics_process(delta):
	object_tick(self)

func _process(delta):
	object_process(self)
