extends Node
onready var cherhome = get_node("../Ctraditional")
onready var chertoday = get_node("../CherToday")
onready var sihome = get_node("../sitradtional")
onready var sitoday = get_node("../sitoday")
onready var lable = get_node("../ColorRect/Label")
onready var colorrect = get_node("../ColorRect")
onready var RedShader = preload("res://RedShader.tres")
onready var YellowShader = preload("res://YellowShader.tres")
onready var NormalShader = preload("res://NormalColor.tres")
onready var ClearShader = preload("res://ClearShader.tres")

func _on_Cherokee_pressed():
	chertoday.set_material(YellowShader)
	cherhome.set_material(RedShader)
	sihome.set_material(NormalShader)
	sitoday.set_material(NormalShader)
	lable.set_text("cherokee")
func _on_Sioux_pressed():
	chertoday.set_material(NormalShader)
	cherhome.set_material(NormalShader)
	sihome.set_material(RedShader)
	sitoday.set_material(YellowShader)
	lable.set_text("sioux")





