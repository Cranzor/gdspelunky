@icon("res://sprites/blocks/mines/brick_gold/brick_gold_0.png")
extends DrawnSprite
class_name Solid


func _ready():
	object_setup()


func _physics_process(delta):
	object_tick()


func _process(delta):
	object_process(delta)


#--- Object functions
var shop_wall
var treasure
var clean_death
var fired_max #--- used in spear_trap_top and spear_trap_bottom
var prox #--- used in spear_trap_top and spear_trap_bottom
var spear_range #--- used in spear_trap_top and spear_trap_bottom. changed name from "range" to not conflict with Godot keyword


func create():
	# action_inherited
	super()

	# main_code
	invincible = false
	shop_wall = false
	type = "none"
	treasure = ""
	clean_death = false


func destroy():
	if (shop_wall):

		var all_shopkeepers = gml.get_all_instances("shopkeeper")
		for shopkeeper_instance in all_shopkeepers:
		
			InLevel.scr_shopkeeper_anger(1, shopkeeper_instance) #--- a bit strange for the shopkeeper to check for the existence of itself, but that appears to be how it works
	
	if (gml.collision_point(position.x+8, position.y-1, "spikes", 0, 0)):

		var obj = gml.instance_place(position.x+8, position.y-1, "spikes", self)
		gml.instance_destroy(obj)

	if (gml.collision_point(position.x+8, position.y-1, "tiki_torch", 0, 0)):

		var obj = gml.instance_place(position.x+8, position.y-1, "tiki_torch", self)
		gml.instance_destroy(obj)

	if (gml.collision_point(position.x+8, position.y-1, "grave", 0, 0)):

		var obj = gml.instance_place(position.x+8, position.y-1, "grave", self)
		gml.instance_destroy(obj)

	if (gml.collision_point(position.x+8, position.y+18, "lamp_red", 0, 0)):

		var obj = gml.instance_place(position.x+8, position.y+16, "lamp_red", self)
		gml.instance_create(obj.position.x+8, obj.position.y+12, Objects.lamp_red_item)
		gml.instance_destroy(obj)

	if (gml.collision_point(position.x+8, position.y+18, "lamp", 0, 0)):

		var obj = gml.instance_place(position.x+8, position.y+16, "lamp", self)
		gml.instance_create(obj.position.x+8, obj.position.y+12, Objects.lamp_item)
		gml.instance_destroy(obj)


	global.check_water = true
