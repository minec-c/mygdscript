extends Node2D
var label = Label.new()
func _ready():
        add_child(label)
        label.set_text("Label was created successful")
