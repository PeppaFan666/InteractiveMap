extends Node
onready var cherokee = get_node("../Control/VBoxContainer/Cherokee")
onready var sioux = get_node("../Control/VBoxContainer/Sioux")
onready var arrow = get_node("../arrow")
onready var control = get_node("../Control")
onready var uibutton = get_node("../Control/VBoxContainer/HideUI")
onready var clear = preload("res://ClearShader.tres")
onready var normal = preload("res://NormalColor.tres")
func _ready():
	arrow.hide()
func _on_HideUI_pressed():
	control.hide()
	cherokee.disabled = true
	sioux.disabled = true
	uibutton.disabled = true
	arrow.show()


func _on_arrow_pressed():
	control.show()
	cherokee.disabled = false
	sioux.disabled = false
	uibutton.disabled = false
	arrow.hide()


func _on_Refresh_pressed():
	get_tree().change_scene("res://Scene.tscn")

