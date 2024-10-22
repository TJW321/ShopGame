extends Area2D

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float):
	if InventorySingleton.inventory_yellow_seed_count == 0:
		InventorySingleton.inventory_yellow_seed_count = 1
	$Label.text = str(InventorySingleton.inventory_yellow_seed_count)

func _on_texture_button_pressed():
	if InventorySingleton.inventory_yellow_seed_count >= 1:
		InventorySingleton.inventory_yellow_seed_count -= 1
		InventorySingleton.WhichItem = preload("res://Textures/Seeds/Yellow Seed.png")
		print("InventorySingleton.inventory_yellow_seed_count -= 1")
		InventorySingleton.IsItemPickedUp = true
		InventorySingleton._process(1) 
