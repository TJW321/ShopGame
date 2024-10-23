extends TextureButton

var itemstored = "Nothing"
var itemstoredcount = 0
var matchingitempokeball = "Pokeball"
var matchingitemgreatball = "Greatball"

var inventory_count_empty = preload("res://Textures/Empty Crate/Empty Crate.png")
var inventory_count_cherishball = preload("res://Textures/Pokeball Crates/Cherish Ball Crate.png")
var inventory_count_diveball = preload("res://Textures/Pokeball Crates/Dive Ball Crate.png")
var inventory_count_duskball = preload("res://Textures/Pokeball Crates/Dusk Ball Crate.png")
var inventory_count_greatball = preload("res://Textures/Pokeball Crates/Great Ball Crate.png")
var inventory_count_ultraball = preload("res://Textures/Pokeball Crates/Ultra Ball Crate.png")
var inventory_count_pokeball = preload("res://Textures/Pokeball Crates/Poke Ball Crate.png")

@onready var quantitylabel1 = $"EmptyCrate/Quantity in box label 1"
@onready var quantitylabel2 = $"EmptyCrate2/Quantity in box label 2"
@onready var quantitylabel3 = $"EmptyCrate3/Quantity in box label 3"
@onready var crate1 = $EmptyCrate
@onready var crate2 = $EmptyCrate2
@onready var crate3 = $EmptyCrate3

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float):
	#if InventorySingleton.inventory_pokeball_count == 0:
	#	$TextureButton.texture_normal = inventory_count_empty
	#elif InventorySingleton.inventory_pokeball_count >= 1:
	#	$TextureButton.texture_normal = inventory_count_full
	#$Label.text = str(InventorySingleton.inventory_pokeball_count)
	pass

func _on_texture_button_pressed():
	#if the pokeball count is 0 AND there is no item picked up, the box should do nothing
	if itemstored == "Nothing" && itemstoredcount == 0:
		print("customer box is empty chief")
		
	elif InventorySingleton.IsItemPickedUp == true && InventorySingleton.WhichItem == preload("res://Textures/Pokeballs/Poke Ball.png"):
		itemstored = "Pokeball"
		itemstoredcount += 1
		quantitylabel1.text = str(itemstoredcount)
		crate1.texture_normal = preload("res://Textures/Pokeball Crates/Poke Ball Crate.png")
		InventorySingleton.WhichItem = null
		InventorySingleton.IsItemPickedUp = false
		InventorySingleton._process(1)

	elif InventorySingleton.IsItemPickedUp == true && InventorySingleton.WhichItem == preload("res://Textures/Pokeballs/Poke Ball.png") && itemstored == matchingitempokeball:
		itemstored = "Pokeball"
		itemstoredcount += 1
		quantitylabel1.text = str(itemstoredcount)
		crate1.texture_normal = preload("res://Textures/Pokeball Crates/Poke Ball Crate.png")
		InventorySingleton.WhichItem = null
		InventorySingleton.IsItemPickedUp = false
		InventorySingleton._process(1)


	#if the pokeball count is one or more AND there is no held item
	#then remove a pokeball from the count, set picked up item to true, change the held icon to a pokeball
	elif itemstoredcount >= 1 && InventorySingleton.IsItemPickedUp == false:
		InventorySingleton.inventory_pokeball_count -= 1
		InventorySingleton.IsItemPickedUp = true
		InventorySingleton._process(1)
