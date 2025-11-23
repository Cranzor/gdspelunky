@tool
extends EditorScript

#--- this was used for determining if an object is static or not based on its groups (with manual adjustment after)
#--- may be useful as a template for adjusting objects dictionary
var objects = load("res://resources/objects.gd")


func _run() -> void:
	var static_objects = []
	var moving_objects = []
	var objects = load("res://resources/objects.gd")
	for object in objects.object_database:
		var groups = objects.object_database[object]["groups"]
		if groups.has("item"):
			moving_objects.append(object)
		elif groups.has("enemy"):
			moving_objects.append(object)
		elif groups.has("treasure"):
			moving_objects.append(object)
		elif groups.has("rubble_piece"):
			moving_objects.append(object)
		elif groups.has("detritus"):
			moving_objects.append(object)
		else:
			static_objects.append(object)
	
	var regex = RegEx.new()
	var text = FileAccess.get_file_as_string("res://resources/objects.gd")
	var new_text = text
	for object in moving_objects:
		var pattern = "(\\['" + object + "'.*?\\],)"
		regex.compile(pattern)
		new_text = regex.sub(new_text, '$1\n\t\t"static" : false,')
	for object in static_objects:
		var pattern = "(\\['" + object + "'.*?\\],)"
		regex.compile(pattern)
		new_text = regex.sub(new_text, '$1\n\t\t"static" : true,')
		
	print(new_text)
