extends Node2D

var path = "res://Resources/Characters/Humans/built/"

onready var inputName: LineEdit = $SelectContainer/NameLine
onready var helm = $CharacterSkin/Helm
onready var face = $CharacterSkin/Face
onready var body = $CharacterSkin/Body

func _on_HelmButton_pressed():
	if helm.frame == 2:
		helm.frame = 0
	else:
		helm.frame += 1

func _on_FaceButton_pressed():
	if face.frame == 2:
		face.frame = 0
	else:
		face.frame += 1

func _on_BodyButton_pressed():
	if body.frame == 2:
		body.frame = 0
	else:
		body.frame += 1

func partSelect_to_index(partSelect: int) -> int:
	var partString = str(partSelect)
	var lastCharacter = partString.substr(partString.length() - 1, 1)
	var partIndex = lastCharacter.to_int()
	return partIndex

func _on_CreateButton_pressed():
	var enteredName = inputName.get_text()
	var helmIndex = partSelect_to_index(helm.frame)
	var faceIndex = partSelect_to_index(face.frame)
	var bodyIndex = partSelect_to_index(body.frame)

	var characterData = {
		"Name": enteredName,
		"Helm": helmIndex,
		"Face": faceIndex,
		"Body": bodyIndex
	}	
	
	var characterFile = File.new()
	var characterPath = path + enteredName + ".json"
	characterFile.open(characterPath, File.WRITE)
	characterFile.store_line(to_json(characterData))
	characterFile.close()
	print("Successfully saved ", characterData)
	print(" as ", enteredName + ".json")
	print(" in ", path)
	inputName.clear()
