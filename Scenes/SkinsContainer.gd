extends VBoxContainer

var builtsPath = "res://Resources/Characters/Humans/built/"
var jsonFiles = []

func _onDeleteButtonPressed(fileName):
	print("Deleting file:", fileName)
	pass

func createForms():
	var vbox = VBoxContainer.new()
	add_child(vbox)

	for file in jsonFiles:
		var form = createForm(file)
		vbox.add_child(form)

func createForm(fileName):
	var form = MarginContainer.new()
	var vbox = VBoxContainer.new()
	vbox.rect_min_size = Vector2(0, 10)  # Set the vertical spacing between the Label and Button
	
	var label = Label.new()
	label.text = fileName
	vbox.add_child(label)
	
	# Create delete button
	var deleteButton = Button.new()
	deleteButton.text = "Delete"
	deleteButton.connect("pressed", self, "_onDeleteButtonPressed", [fileName])
	vbox.add_child(deleteButton)
	
	form.add_child(vbox)
	
	# Load and display JSON data within the form
	# Customize the form layout and contents as desired

	return form

# Called when the node enters the scene tree for the first time.
func _ready():
	print("Directory path:", builtsPath)
	var directory = Directory.new()
	var openResult = directory.open(builtsPath)
	
	if openResult == OK:
		directory.list_dir_begin()
		while true:
			var fileName = directory.get_next()
			if fileName == "":
				break
			if fileName.ends_with(".json"):
				var filePath = builtsPath + fileName
				var characterFile = File.new()
				var fileError = characterFile.open(filePath, File.READ)
				
				if fileError == OK:
					var fileData = characterFile.get_as_text()
					print(fileData)
					jsonFiles.append(fileData)
					characterFile.close()
					
		directory.list_dir_end()
	
	print("Loaded ", jsonFiles.size(), " skins")
	
	createForms()

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
