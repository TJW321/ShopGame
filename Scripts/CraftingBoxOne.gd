extends Area2D

var rednuttexture = preload("res://Textures/Nut Crates/Red NUT Crate.png")
var whitenuttexture = preload("res://Textures/Nut Crates/White NUT Crate.png")

func _on_texture_button_pressed() -> void:
	if InventorySingleton.WhichItem == preload("res://Textures/Nuts/Red Nut.png"):
		$TextureButton.texture_normal = rednuttexture
		InventorySingleton.craftingboxonestoreditem = 'Red Nut'
		InventorySingleton.WhichItem = null
	elif InventorySingleton.WhichItem == preload("res://Textures/Nuts/White Nut.png"):
		$TextureButton.texture_normal = whitenuttexture
		InventorySingleton.craftingboxonestoreditem = 'White Nut'
		InventorySingleton.WhichItem = null
