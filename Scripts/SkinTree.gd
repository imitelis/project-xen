extends Tree


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	var folderPath = "res://Chars"
	var folder = Directory.new()
	var error = folder.open(folderPath)

	if error == OK:
		var subfolder = folder.get_next()
		while subfolder != "":
			if folder.current_is_dir():
				var item = create_item(subfolder)
				append_root(item)
				load_subfolders(folderPath + "/" + subfolder, item)
			subfolder = folder.get_next()

	folder.close()
	
func load_subfolders(path, parent):
	var folder = Directory.new()
	var error = folder.open(path)

	if error == OK:
		var subfolder = folder.get_next()
		while subfolder != "":
			if folder.current_is_dir():
				var item = create_item(subfolder)
				append_child(parent, item)
				load_subfolders(path + "/" + subfolder, item)
			subfolder = folder.get_next()

	folder.close()

func create_item(name):
	var item = TreeItem.new()
	item.set_text(0, name)
	return item



# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
