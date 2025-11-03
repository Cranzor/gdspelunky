extends Button

@onready var hand: AnimatedSprite2D = %Hand
var y_offset: int = 5
var x_offset: int = 15


func _ready() -> void:
	self.focus_entered.connect(_focus_entered)


func _focus_entered() -> void:
	if global_position != Vector2(0, 0): #--- "resume game" button is grabbing focus before its position is initialized, messing up the hand position
		hand.position.y = global_position.y + y_offset
		hand.position.x = position.x - x_offset
