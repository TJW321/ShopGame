extends Area2D

var Pokeballfinisheditem =  preload("res://Textures/Pokeball Crates/Poke Ball Crate.png")
var Greatballfinisheditem = preload("res://Textures/Pokeball Crates/Great Ball Crate.png")
var Ultraballfinisheditem = preload("res://Textures/Pokeball Crates/Ultra Ball Crate.png")
var duskballfinisheditem = preload("res://Textures/Pokeball Crates/Dusk Ball Crate.png")
var diveballfinisheditem = preload("res://Textures/Pokeball Crates/Dive Ball Crate.png")
var cherishballfinisheditem = preload("res://Textures/Pokeball Crates/Cherish Ball Crate.png")

var craftingbuttonhasbeenpressed = false

func _on_button_pressed() -> void:
	if InventorySingleton.craftingboxonestoreditem == "Red Nut" && InventorySingleton.craftingboxtwostoreditem == "White Nut":
		$TextureButton.texture_normal = Pokeballfinisheditem
		craftingbuttonhasbeenpressed = true
	elif InventorySingleton.craftingboxonestoreditem == "White Nut" && InventorySingleton.craftingboxtwostoreditem == "Red Nut":
		$TextureButton.texture_normal = Pokeballfinisheditem
		craftingbuttonhasbeenpressed = true
	
	elif InventorySingleton.craftingboxonestoreditem == "White Nut" && InventorySingleton.craftingboxtwostoreditem == "Blue Nut":
		$TextureButton.texture_normal = Greatballfinisheditem
		craftingbuttonhasbeenpressed = true
	elif InventorySingleton.craftingboxonestoreditem == "Blue Nut" && InventorySingleton.craftingboxtwostoreditem == "White Nut":
		$TextureButton.texture_normal = Greatballfinisheditem
		craftingbuttonhasbeenpressed = true
	
	elif InventorySingleton.craftingboxonestoreditem == "White Nut" && InventorySingleton.craftingboxtwostoreditem == "Yellow Nut":
		$TextureButton.texture_normal = Ultraballfinisheditem
		craftingbuttonhasbeenpressed = true
	elif InventorySingleton.craftingboxonestoreditem == "Yellow Nut" && InventorySingleton.craftingboxtwostoreditem == "White Nut":
		$TextureButton.texture_normal = Ultraballfinisheditem
		craftingbuttonhasbeenpressed = true
		
	elif InventorySingleton.craftingboxonestoreditem == "Green Nut" && InventorySingleton.craftingboxtwostoreditem == "Green Nut":
		$TextureButton.texture_normal = duskballfinisheditem
		craftingbuttonhasbeenpressed = true
	elif InventorySingleton.craftingboxonestoreditem == "Green Nut" && InventorySingleton.craftingboxtwostoreditem == "Green Nut":
		$TextureButton.texture_normal = duskballfinisheditem
		craftingbuttonhasbeenpressed = true
		
	elif InventorySingleton.craftingboxonestoreditem == "Blue Nut" && InventorySingleton.craftingboxtwostoreditem == "Blue Nut":
		$TextureButton.texture_normal = diveballfinisheditem
		craftingbuttonhasbeenpressed = true
	elif InventorySingleton.craftingboxonestoreditem == "Blue Nut" && InventorySingleton.craftingboxtwostoreditem == "Blue Nut":
		$TextureButton.texture_normal = diveballfinisheditem
		craftingbuttonhasbeenpressed = true
		
	elif InventorySingleton.craftingboxonestoreditem == "Red Nut" && InventorySingleton.craftingboxtwostoreditem == "Red Nut":
		$TextureButton.texture_normal = cherishballfinisheditem
		craftingbuttonhasbeenpressed = true
	elif InventorySingleton.craftingboxonestoreditem == "Red Nut" && InventorySingleton.craftingboxtwostoreditem == "Red Nut":
		$TextureButton.texture_normal = cherishballfinisheditem
		craftingbuttonhasbeenpressed = true

func _on_texture_button_pressed() -> void:
	if InventorySingleton.craftingboxonestoreditem == "Red Nut" && InventorySingleton.craftingboxtwostoreditem == "White Nut" && craftingbuttonhasbeenpressed == true:
		InventorySingleton.WhichItem = preload("res://Textures/Pokeballs/Poke Ball.png")
		InventorySingleton.IsItemPickedUp = true
		$TextureButton.texture_normal = preload("res://Textures/Empty Crate/Empty Crate.png")
		$"../Crafting Box One/TextureButton".texture_normal = preload("res://Textures/Empty Crate/Empty Crate.png")
		InventorySingleton.craftingboxonestoreditem = null
		$"../Crafting Box Two/TextureButton".texture_normal = preload("res://Textures/Empty Crate/Empty Crate.png")
		InventorySingleton.craftingboxtwostoreditem = null
		craftingbuttonhasbeenpressed = false
		#InventorySingleton.inventory_pokeball_count += 1
	elif InventorySingleton.craftingboxonestoreditem == "White Nut" && InventorySingleton.craftingboxtwostoreditem == "Red Nut" && craftingbuttonhasbeenpressed == true:
		InventorySingleton.WhichItem = preload("res://Textures/Pokeballs/Poke Ball.png")
		InventorySingleton.IsItemPickedUp = true
		$TextureButton.texture_normal = preload("res://Textures/Empty Crate/Empty Crate.png")
		$"../Crafting Box One/TextureButton".texture_normal = preload("res://Textures/Empty Crate/Empty Crate.png")
		InventorySingleton.craftingboxonestoreditem = null
		$"../Crafting Box Two/TextureButton".texture_normal = preload("res://Textures/Empty Crate/Empty Crate.png")
		InventorySingleton.craftingboxtwostoreditem = null
		craftingbuttonhasbeenpressed = false
		#InventorySingleton.inventory_pokeball_count += 1
	
	elif InventorySingleton.craftingboxonestoreditem == "White Nut" && InventorySingleton.craftingboxtwostoreditem == "Blue Nut" && craftingbuttonhasbeenpressed == true:
		InventorySingleton.WhichItem = preload("res://Textures/Pokeballs/Great Ball.png")
		InventorySingleton.IsItemPickedUp = true
		$TextureButton.texture_normal = preload("res://Textures/Empty Crate/Empty Crate.png")
		$"../Crafting Box One/TextureButton".texture_normal = preload("res://Textures/Empty Crate/Empty Crate.png")
		InventorySingleton.craftingboxonestoreditem = null
		$"../Crafting Box Two/TextureButton".texture_normal = preload("res://Textures/Empty Crate/Empty Crate.png")
		InventorySingleton.craftingboxtwostoreditem = null
		craftingbuttonhasbeenpressed = false
		#InventorySingleton.inventory_greatball_count += 1
	elif InventorySingleton.craftingboxonestoreditem == "Blue Nut" && InventorySingleton.craftingboxtwostoreditem == "White Nut" && craftingbuttonhasbeenpressed == true:
		InventorySingleton.WhichItem = preload("res://Textures/Pokeballs/Great Ball.png")
		InventorySingleton.IsItemPickedUp = true
		$TextureButton.texture_normal = preload("res://Textures/Empty Crate/Empty Crate.png")
		$"../Crafting Box One/TextureButton".texture_normal = preload("res://Textures/Empty Crate/Empty Crate.png")
		InventorySingleton.craftingboxonestoreditem = null
		$"../Crafting Box Two/TextureButton".texture_normal = preload("res://Textures/Empty Crate/Empty Crate.png")
		InventorySingleton.craftingboxtwostoreditem = null
		craftingbuttonhasbeenpressed = false
		#InventorySingleton.inventory_greatball_count += 1
		
	elif InventorySingleton.craftingboxonestoreditem == "White Nut" && InventorySingleton.craftingboxtwostoreditem == "Yellow Nut" && craftingbuttonhasbeenpressed == true:
		InventorySingleton.WhichItem = preload("res://Textures/Pokeballs/Ultra Ball.png")
		$TextureButton.texture_normal = preload("res://Textures/Empty Crate/Empty Crate.png")
		$"../Crafting Box One/TextureButton".texture_normal = preload("res://Textures/Empty Crate/Empty Crate.png")
		InventorySingleton.craftingboxonestoreditem = null
		$"../Crafting Box Two/TextureButton".texture_normal = preload("res://Textures/Empty Crate/Empty Crate.png")
		InventorySingleton.craftingboxtwostoreditem = null
		craftingbuttonhasbeenpressed = false
		InventorySingleton.inventory_ultraball_count += 1
	elif InventorySingleton.craftingboxonestoreditem == "Yellow Nut" && InventorySingleton.craftingboxtwostoreditem == "White Nut" && craftingbuttonhasbeenpressed == true:
		InventorySingleton.WhichItem = preload("res://Textures/Pokeballs/Ultra Ball.png")
		$TextureButton.texture_normal = preload("res://Textures/Empty Crate/Empty Crate.png")
		$"../Crafting Box One/TextureButton".texture_normal = preload("res://Textures/Empty Crate/Empty Crate.png")
		InventorySingleton.craftingboxonestoreditem = null
		$"../Crafting Box Two/TextureButton".texture_normal = preload("res://Textures/Empty Crate/Empty Crate.png")
		InventorySingleton.craftingboxtwostoreditem = null
		craftingbuttonhasbeenpressed = false
		InventorySingleton.inventory_ultraball_count += 1
		
	elif InventorySingleton.craftingboxonestoreditem == "Green Nut" && InventorySingleton.craftingboxtwostoreditem == "Green Nut" && craftingbuttonhasbeenpressed == true:
		InventorySingleton.WhichItem = preload("res://Textures/Pokeballs/Dusk Ball.png")
		$TextureButton.texture_normal = preload("res://Textures/Empty Crate/Empty Crate.png")
		$"../Crafting Box One/TextureButton".texture_normal = preload("res://Textures/Empty Crate/Empty Crate.png")
		InventorySingleton.craftingboxonestoreditem = null
		$"../Crafting Box Two/TextureButton".texture_normal = preload("res://Textures/Empty Crate/Empty Crate.png")
		InventorySingleton.craftingboxtwostoreditem = null
		craftingbuttonhasbeenpressed = false
		InventorySingleton.inventory_duskball_count += 1
	elif InventorySingleton.craftingboxonestoreditem == "Green Nut" && InventorySingleton.craftingboxtwostoreditem == "Green Nut" && craftingbuttonhasbeenpressed == true:
		InventorySingleton.WhichItem = preload("res://Textures/Pokeballs/Dusk Ball.png")
		$TextureButton.texture_normal = preload("res://Textures/Empty Crate/Empty Crate.png")
		$"../Crafting Box One/TextureButton".texture_normal = preload("res://Textures/Empty Crate/Empty Crate.png")
		InventorySingleton.craftingboxonestoreditem = null
		$"../Crafting Box Two/TextureButton".texture_normal = preload("res://Textures/Empty Crate/Empty Crate.png")
		InventorySingleton.craftingboxtwostoreditem = null
		craftingbuttonhasbeenpressed = false
		InventorySingleton.inventory_duskball_count += 1
		
	elif InventorySingleton.craftingboxonestoreditem == "Blue Nut" && InventorySingleton.craftingboxtwostoreditem == "Blue Nut" && craftingbuttonhasbeenpressed == true:
		InventorySingleton.WhichItem = preload("res://Textures/Pokeballs/Dive Ball.png")
		$TextureButton.texture_normal = preload("res://Textures/Empty Crate/Empty Crate.png")
		$"../Crafting Box One/TextureButton".texture_normal = preload("res://Textures/Empty Crate/Empty Crate.png")
		InventorySingleton.craftingboxonestoreditem = null
		$"../Crafting Box Two/TextureButton".texture_normal = preload("res://Textures/Empty Crate/Empty Crate.png")
		InventorySingleton.craftingboxtwostoreditem = null
		craftingbuttonhasbeenpressed = false
		InventorySingleton.inventory_diveball_count += 1
	elif InventorySingleton.craftingboxonestoreditem == "Blue Nut" && InventorySingleton.craftingboxtwostoreditem == "Blue Nut" && craftingbuttonhasbeenpressed == true:
		InventorySingleton.WhichItem = preload("res://Textures/Pokeballs/Dive Ball.png")
		$TextureButton.texture_normal = preload("res://Textures/Empty Crate/Empty Crate.png")
		$"../Crafting Box One/TextureButton".texture_normal = preload("res://Textures/Empty Crate/Empty Crate.png")
		InventorySingleton.craftingboxonestoreditem = null
		$"../Crafting Box Two/TextureButton".texture_normal = preload("res://Textures/Empty Crate/Empty Crate.png")
		InventorySingleton.craftingboxtwostoreditem = null
		craftingbuttonhasbeenpressed = false
		InventorySingleton.inventory_diveball_count += 1
		
	elif InventorySingleton.craftingboxonestoreditem == "Red Nut" && InventorySingleton.craftingboxtwostoreditem == "Red Nut" && craftingbuttonhasbeenpressed == true:
		InventorySingleton.WhichItem = preload("res://Textures/Pokeballs/Cherish Ball.png")
		$TextureButton.texture_normal = preload("res://Textures/Empty Crate/Empty Crate.png")
		$"../Crafting Box One/TextureButton".texture_normal = preload("res://Textures/Empty Crate/Empty Crate.png")
		InventorySingleton.craftingboxonestoreditem = null
		$"../Crafting Box Two/TextureButton".texture_normal = preload("res://Textures/Empty Crate/Empty Crate.png")
		InventorySingleton.craftingboxtwostoreditem = null
		craftingbuttonhasbeenpressed = false
		InventorySingleton.inventory_cherishball_count += 1
	elif InventorySingleton.craftingboxonestoreditem == "Red Nut" && InventorySingleton.craftingboxtwostoreditem == "Red Nut" && craftingbuttonhasbeenpressed == true:
		InventorySingleton.WhichItem = preload("res://Textures/Pokeballs/Cherish Ball.png")
		$TextureButton.texture_normal = preload("res://Textures/Empty Crate/Empty Crate.png")
		$"../Crafting Box One/TextureButton".texture_normal = preload("res://Textures/Empty Crate/Empty Crate.png")
		InventorySingleton.craftingboxonestoreditem = null
		$"../Crafting Box Two/TextureButton".texture_normal = preload("res://Textures/Empty Crate/Empty Crate.png")
		InventorySingleton.craftingboxtwostoreditem = null
		craftingbuttonhasbeenpressed = false
		InventorySingleton.inventory_cherishball_count += 1
