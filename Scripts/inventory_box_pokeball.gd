extends Area2D

var inventory_count_empty = preload("res://Textures/Empty Crate/Empty Crate.png")
var inventory_count_full = preload("res://Textures/Pokeball Crates/Poke Ball Crate.png")

#Variable to hold which item is inthe inventory box

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float):
	if InventorySingleton.inventory_pokeball_count == 0:
		$TextureButton.texture_normal = inventory_count_empty
	elif InventorySingleton.inventory_pokeball_count >= 1:
		$TextureButton.texture_normal = inventory_count_full
	$Label.text = str(InventorySingleton.inventory_pokeball_count)

func _on_texture_button_pressed():
	#if the pokeball count is 0 AND there is no item picked up, the box should do nothing
	if InventorySingleton.inventory_pokeball_count == 0 && InventorySingleton.IsItemPickedUp == false:
		print("pokeball box is empty chief")
		
	#if the pokeball count is 0 or more AND an item is picked up AND that held item is a pokeball
	#then add a pokeball to the count, set the held item to nothing and set held item to false
	elif InventorySingleton.inventory_pokeball_count >= 0 && InventorySingleton.IsItemPickedUp == true && InventorySingleton.WhichItem == preload("res://Textures/Pokeballs/Poke Ball.png"):
		InventorySingleton.inventory_pokeball_count += 1
		print("pokeball inventory count + 1")
		InventorySingleton.IsItemPickedUp = false
		InventorySingleton.WhichItem = null
		InventorySingleton._process(1)
		
	#if the pokeball count is one or more AND there is no held item
	#then remove a pokeball from the count, set picked up item to true, change the held icon to a pokeball
	elif InventorySingleton.inventory_pokeball_count >= 1 && InventorySingleton.IsItemPickedUp == false:
		InventorySingleton.inventory_pokeball_count -= 1
		print("InventorySingleton.inventory_pokeball_count -= 1")
		InventorySingleton.IsItemPickedUp = true
		InventorySingleton.WhichItem = preload("res://Textures/Pokeballs/Poke Ball.png")
		InventorySingleton._process(1)
