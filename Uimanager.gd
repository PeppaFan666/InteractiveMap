extends Node
onready var cherokee = get_node("../VBoxContainer/Cherokee")
onready var sioux = get_node("../VBoxContainer/Sioux")
onready var info = get_node("../ColorRect")
onready var uibutton = get_node("../VBoxContainer/HideUI")
onready var clear = preload("res://ClearShader.tres")
onready var normal = preload("res://NormalColor.tres")
var didhide = false
var clickcount = 0
func _on_HideUI_pressed():
	uibutton.set_text("Show Ui")
	info.hide()
	sioux.set_material(clear)
	cherokee.set_material(clear)
	print("hidden")
	didhide = true
	didhide = true
	print("shown")
	uibutton.set_text("Hide Ui")
	info.show()
	sioux.set_material(normal)
	cherokee.set_material(normal)
