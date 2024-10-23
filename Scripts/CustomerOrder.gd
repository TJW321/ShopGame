extends Node2D

var items = ["Pokeball"]
#"Greatball", "Ultraball", "Duskball", "Diveball", "Cherishball"

var selected_items = {}

@onready var crate_label_1 = $"EmptyCrate/Crate Label 1"
@onready var crate_label_2 = $"EmptyCrate2/Crate Label 2"
@onready var crate_label_3 = $"EmptyCrate3/Crate Label 3"

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_timer_timeout() -> void:
	#clear the selected_items
	selected_items.clear()
	#shuffle the item array
	items.shuffle()
	#select up to three items from the shufled array
	var number_of_items = min(3, items.size())
	
	for i in range(number_of_items):
		#pick the item
		var item = items[i]
		#assign a random amount between 1 and 5
		var amount = int(randf_range(1,6))
		#store the item and amount in the dictionary
		selected_items[item] = amount
	
	update_labels()
	
	print("Selected items and amounts ", selected_items)
	$Timer.stop()

func update_labels():
	var selected_list = selected_items.keys()
	if selected_list.size() >= 1:
		crate_label_1.text = selected_list[0] + ": " + str(selected_items[selected_list[0]])
	else:
		crate_label_1.text = ""
	if selected_list.size() >= 2:
		crate_label_2.text = selected_list[1] + ": " + str(selected_items[selected_list[1]])
	else:
		crate_label_2.text = ""
	if selected_list.size() >= 3:
		crate_label_3.text = selected_list[2] + ": " + str(selected_items[selected_list[2]])
	else:
		crate_label_3.text = ""

func _on_button_pressed() -> void:
	pass # Replace with function body.
	#check the items in the delivery crates and quantity against the requested items array
	print("button pressed")
