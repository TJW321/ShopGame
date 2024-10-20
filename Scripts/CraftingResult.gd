extends Area2D


var finisheditem =  preload("res://Textures/pixil-frame-0 (11).png")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_button_pressed() -> void:
	if InventorySingleton.craftingboxonestoreditem == "Red Nut" && InventorySingleton.craftingboxtwostoreditem == "White Nut":
		$TextureButton.texture_normal = finisheditem
	elif InventorySingleton.craftingboxonestoreditem == "White Nut" && InventorySingleton.craftingboxtwostoreditem == "Red Nut":
		$TextureButton.texture_normal = finisheditem

func _on_texture_button_pressed() -> void:
	InventorySingleton.WhichItem = preload("res://Textures/pixil-frame-0 (11).png")
