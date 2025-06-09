extends CanvasLayer
@onready var arrows: Node2D = $Arrows

#--- simplifying a code segment from draw_hud()
#--- change this to update in gm_loop instead of physics_process
#--- have to add item icons showing themselves
func _physics_process(delta: float) -> void:	
	var n: int = 28
	var children: Array[Node] = get_children()
	for child: Node in children:
		if child.visible:
			child.position.x = n
			n += 20

	var arrows_children: Array[Node] = arrows.get_children()
	for i in global.arrows:
		arrows_children[i].show()
