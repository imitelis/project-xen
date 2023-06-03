extends Node

class_name Person
export (String) var person_name = ''
export (String) var person_class = ''
export (String) var description_class = ''
export (int) var person_distance = 0
export (int) var person_hp = 0
export (Array) var person_techs = []
export (bool) var person_teleport = false

var model

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
