extends Node2D

var inventory_white_seed_count = 1
var inventory_red_seed_count = 1
var inventory_blue_seed_count = 0
var inventory_green_seed_count = 0
var inventory_yellow_seed_count = 0

var inventory_white_nut_count = 0
var inventory_red_nut_count = 0
var inventory_blue_nut_count = 0
var inventory_green_nut_count = 0
var inventory_yellow_nut_count = 0

var inventory_pokeball_count = 0
var inventory_greatball_count = 0
var inventory_ultraball_count = 0
var inventory_duskball_count = 0
var inventory_diveball_count = 0
var inventory_cherishball_count = 0

var customer_request_one = "Ready"
var customer_request_two = "Ready"
var customer_request_three = "Ready"

var craftingboxonestoreditem = 'Ready'
var craftingboxtwostoreditem = 'Ready'

#Setting variable references to the other nodes to control items being 
#picked up and stuck to the mouse
@onready var PickedUpItem = $"/root/Main/PickedUpItem"
@onready var HandSprite	= $"/root/Main/PickedUpItem/Sprite2D"

var IsItemPickedUp = false

var WhichItem = preload("res://Textures/Seeds/White Seed.png")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	#hide picked up item by default
	#PickedUpItem.visible = false
	if PickedUpItem == null:
		print("error pickedupitem node not found!")
	else:
		print("pickedupitem node succesfully found!")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	if Input.is_action_pressed("Drop Item"):
		WhichItem = preload("res://Textures/Nothing.png")
	#if an item is picked up, make it follow the mouse
	if IsItemPickedUp == true:
		PickedUpItem.position = get_viewport().get_mouse_position()  
		PickedUpItem.visible = true
		HandSprite.texture = WhichItem
	if IsItemPickedUp == false:
		WhichItem = null
