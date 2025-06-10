extends CanvasLayer

@onready var hoops_icon: Sprite2D = $HoopsIcon
@onready var timer_icon: Sprite2D = $TimerIcon
@onready var heart: Sprite2D = $Heart
@onready var shopkeeper_icon: Sprite2D = $ShopkeeperIcon
@onready var damsel_icon: Sprite2D = $DamselIcon

enum Type {MOON, STARS, SUN}
@export var type: Type

func _ready() -> void:
	if type == Type.MOON:
		hoops_icon.show()
		timer_icon.show()
	elif type == Type.STARS:
		heart.show()
		shopkeeper_icon.show()
	elif type ==  Type.SUN:
		heart.show()
		damsel_icon.show()
