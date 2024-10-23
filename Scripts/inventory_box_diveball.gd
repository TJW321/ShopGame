extends Area2D

var inventory_count_empty = preload("res://Textures/Empty Crate/Empty Crate.png")
var inventory_count_full = preload("res://Textures/Pokeball Crates/Dive Ball Crate.png")

#Variable to hold which item is inthe inventory box

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float):
	if InventorySingleton.inventory_diveball_count == 0:
		$TextureButton.texture_normal = inventory_count_empty
	elif InventorySingleton.inventory_diveball_count >= 1:
		$TextureButton.texture_normal = inventory_count_full
	$Label.text = str(InventorySingleton.inventory_diveball_count)

func _on_texture_button_pressed():
	if InventorySingleton.inventory_diveball_count == 0 && InventorySingleton.IsItemPickedUp == false:
		print("diveball box is empty chief")

	elif InventorySingleton.inventory_diveball_count >= 0 && InventorySingleton.IsItemPickedUp == true && InventorySingleton.WhichItem == preload("res://Textures/Pokeballs/Dive Ball.png"):
		InventorySingleton.inventory_diveball_count += 1
		print("diveball inventory count + 1")
		InventorySingleton.IsItemPickedUp = false
		InventorySingleton.WhichItem = null
		InventorySingleton._process(1)

	elif InventorySingleton.inventory_diveball_count >= 1 && InventorySingleton.IsItemPickedUp == false:
		InventorySingleton.inventory_diveball_count -= 1
		print("InventorySingleton.inventory_diveball_count -= 1")
		InventorySingleton.IsItemPickedUp = true
		InventorySingleton.WhichItem = preload("res://Textures/Pokeballs/Dive Ball.png")
		InventorySingleton._process(1) 
