extends Area2D

var Pokeballfinisheditem =  preload("res://Textures/Pokeball Crates/Poke Ball Crate.png")

func _on_button_pressed() -> void:
	if InventorySingleton.craftingboxonestoreditem == "Red Nut" && InventorySingleton.craftingboxtwostoreditem == "White Nut":
		$TextureButton.texture_normal = Pokeballfinisheditem
	elif InventorySingleton.craftingboxonestoreditem == "White Nut" && InventorySingleton.craftingboxtwostoreditem == "Red Nut":
		$TextureButton.texture_normal = Pokeballfinisheditem

func _on_texture_button_pressed() -> void:
	if InventorySingleton.craftingboxonestoreditem == "Red Nut" && InventorySingleton.craftingboxtwostoreditem == "White Nut":
		InventorySingleton.WhichItem = preload("res://Textures/Pokeballs/Poke Ball.png")
		$TextureButton.texture_normal = preload("res://Textures/Empty Crate/Empty Crate.png")
		$"../Crafting Box One/TextureButton".texture_normal = preload("res://Textures/Empty Crate/Empty Crate.png")
		InventorySingleton.craftingboxonestoreditem = null
		$"../Crafting Box Two/TextureButton".texture_normal = preload("res://Textures/Empty Crate/Empty Crate.png")
		InventorySingleton.craftingboxtwostoreditem = null
	elif InventorySingleton.craftingboxonestoreditem == "White Nut" && InventorySingleton.craftingboxtwostoreditem == "Red Nut":
		InventorySingleton.WhichItem = preload("res://Textures/Pokeballs/Poke Ball.png")
		$TextureButton.texture_normal = preload("res://Textures/Empty Crate/Empty Crate.png")
		$"../Crafting Box One/TextureButton".texture_normal = preload("res://Textures/Empty Crate/Empty Crate.png")
		InventorySingleton.craftingboxonestoreditem = null
		$"../Crafting Box Two/TextureButton".texture_normal = preload("res://Textures/Empty Crate/Empty Crate.png")
		InventorySingleton.craftingboxtwostoreditem = null
