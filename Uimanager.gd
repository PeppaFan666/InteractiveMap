extends Node
onready var cherokee = get_node("../VBoxContainer/Cherokee")
onready var sioux = get_node("../VBoxContainer/Sioux")
onready var info = get_node("../ColorRect")
onready var arrow = get_node("../arrow")
onready var control = get_node("../Control")
onready var uibutton = get_node("../VBoxContainer/HideUI")
onready var clear = preload("res://ClearShader.tres")
onready var normal = preload("res://NormalColor.tres")
func _ready():
	arrow.hide()
func _on_HideUI_pressed():
	control.hide()
	info.hide()
	sioux.set_material(clear)
	cherokee.set_material(clear)
	cherokee.disabled = true
	sioux.disabled = true
	uibutton.disabled = true
	uibutton.hide()
	arrow.show()


func _on_arrow_pressed():
	control.show()
	uibutton.show()
	info.show()
	sioux.set_material(normal)
	cherokee.set_material(normal)
	cherokee.disabled = false
	sioux.disabled = false
	uibutton.disabled = false
	arrow.hide()
