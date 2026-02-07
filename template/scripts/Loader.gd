extends Node2D

#func _ready():
#	var path = "res://user_scripts/thisgdscript.gd"
#	var f = File.new()
#	if f.file_exists(path):
#		var s = load(path)
#		set_script(s)
#	else:
#		print("User script nof found")

# FORCE Godot to register the script at export time
const UserScript = preload("res://user_scripts/thisgdscript.gd")

func _ready():
	var instance = UserScript.new()
	if instance.has_method("run"):
		instance.run(self)
