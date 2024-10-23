extends Area2D

var inventory_count_empty = preload("res://Textures/Empty Crate/Empty Crate.png")
var inventory_count_full = preload("res://Textures/Nut Crates/Yellow NUT Crate.png")

#Variable to hold which item is inthe inventory box

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float):
	if InventorySingleton.inventory_yellow_nut_count == 0:
		$TextureButton.texture_normal = inventory_count_empty
	elif InventorySingleton.inventory_yellow_nut_count >= 1:
		$TextureButton.texture_normal = inventory_count_full
	$Label.text = str(InventorySingleton.inventory_yellow_nut_count)

func _on_texture_button_pressed():
	if InventorySingleton.inventory_yellow_nut_count == 0:
		print("yellow nut box is empty chief")
	elif InventorySingleton.inventory_yellow_nut_count >= 1:
		InventorySingleton.inventory_yellow_nut_count -= 1
		print("InventorySingleton.inventory_yellow_nut_count -= 1")
		InventorySingleton.IsItemPickedUp = true
		InventorySingleton.WhichItem = preload("res://Textures/Nuts/Yellow Nut.png")
		InventorySingleton._process(1) 
