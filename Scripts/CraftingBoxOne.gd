extends Area2D

var rednuttexture = preload("res://Textures/Nut Crates/Red NUT Crate.png")
var whitenuttexture = preload("res://Textures/Nut Crates/White NUT Crate.png")
var bluenuttexture = preload("res://Textures/Nut Crates/Blue NUT Crate.png")
var greennuttexture = preload("res://Textures/Nut Crates/Green NUT Crate.png")
var yellownuttexture = preload("res://Textures/Nut Crates/Yellow NUT Crate.png")

func _on_texture_button_pressed() -> void:
	if InventorySingleton.WhichItem == preload("res://Textures/Nuts/Red Nut.png"):
		$TextureButton.texture_normal = rednuttexture
		InventorySingleton.craftingboxonestoreditem = 'Red Nut'
		InventorySingleton.WhichItem = null
	elif InventorySingleton.WhichItem == preload("res://Textures/Nuts/White Nut.png"):
		$TextureButton.texture_normal = whitenuttexture
		InventorySingleton.craftingboxonestoreditem = 'White Nut'
		InventorySingleton.WhichItem = null
	elif InventorySingleton.WhichItem == preload("res://Textures/Nuts/Blue Nut.png"):
		$TextureButton.texture_normal = bluenuttexture
		InventorySingleton.craftingboxonestoreditem = 'Blue Nut'
		InventorySingleton.WhichItem = null
	elif InventorySingleton.WhichItem == preload("res://Textures/Nuts/Green Nut.png"):
		$TextureButton.texture_normal = greennuttexture
		InventorySingleton.craftingboxonestoreditem = 'Green Nut'
		InventorySingleton.WhichItem = null
	elif InventorySingleton.WhichItem == preload("res://Textures/Nuts/Yellow Nut.png"):
		$TextureButton.texture_normal = yellownuttexture
		InventorySingleton.craftingboxonestoreditem = 'Yellow Nut'
		InventorySingleton.WhichItem = null
