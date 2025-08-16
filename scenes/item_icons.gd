extends CanvasLayer
@onready var arrows: Node2D = $Arrows
@onready var udjat_eye_icon: AnimatedSprite2D = $UdjatEyeIcon
@onready var ankh_icon: Sprite2D = $AnkhIcon
@onready var crown_icon: Sprite2D = $CrownIcon
@onready var kapala_icon: AnimatedSprite2D = $KapalaIcon
@onready var spectacles_icon: Sprite2D = $SpectaclesIcon
@onready var gloves_icon: Sprite2D = $GlovesIcon
@onready var mitt_icon: Sprite2D = $MittIcon
@onready var spring_shoes_icon: Sprite2D = $SpringShoesIcon
@onready var spike_shoes_icon: Sprite2D = $SpikeShoesIcon
@onready var cape_icon: Sprite2D = $CapeIcon
@onready var jetpack_icon: Sprite2D = $JetpackIcon
@onready var compass_icon: Sprite2D = $CompassIcon
@onready var parachute_icon: Sprite2D = $ParachuteIcon

#--- simplifying a code segment from draw_hud()
#--- change this to update in gm_loop instead of physics_process
#--- have to add item icons showing themselves
func draw_icons():
	check_items()
	lay_out_icons()


func check_items():
	var has_item_and_icons: Dictionary = {ankh_icon : global.has_ankh, crown_icon : global.has_crown, spectacles_icon : global.has_spectacles,
									gloves_icon : global.has_gloves, mitt_icon : global.has_mitt, spring_shoes_icon : global.has_spring_shoes,
									spike_shoes_icon : global.has_spike_shoes, cape_icon : global.has_cape, jetpack_icon : global.has_jetpack,
									compass_icon : global.has_compass, parachute_icon : global.has_parachute}
	for key in has_item_and_icons:
		if has_item_and_icons[key]:
			key.show()
		else:
			key.hide()
	
	if global.has_udjat_eye:
		udjat_eye_icon.show()
		if global.udjat_blink: udjat_eye_icon.animation = "closed"
		else: udjat_eye_icon.animation = "open"
	
	if global.has_kapala:
		if global.blood_level == 0: kapala_icon.frame = 0
		elif global.blood_level <= 2: kapala_icon.frame = 1
		elif global.blood_level <= 4: kapala_icon.frame = 2
		elif global.blood_level <= 6: kapala_icon.frame = 3
		elif global.blood_level <= 8: kapala_icon.frame = 4
		kapala_icon.show()
	
	var arrows_children: Array[Node] = arrows.get_children()
	var children_count = arrows.get_child_count()
	for i in children_count:
		var current_child = arrows_children[i]
		if i < global.arrows:
			current_child.show()
		else:
			current_child.hide()


func lay_out_icons():
	var n: int = 28
	var children: Array[Node] = get_children()
	for child: Node in children:
		if child.visible:
			child.position.x = n
			n += 20
