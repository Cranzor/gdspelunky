@tool
extends EditorScript

var room_generation = RoomGeneration.new()

# Called when the script is executed (using File -> Run in Script Editor).
func _run() -> void:
	#var rooms = Rooms.new()
	#for instance in rooms.room_database['olmec']['instances']['instance']:
		#print(instance['object'] + instance['position']['x'] + instance['position']['y'])
	
	room_generation.generate_room('intro')
