extends Area2D

var rednuttexture = preload("res://Textures/pixil-frame-0 (9).png")
var whitenuttexture = preload("res://Textures/pixil-frame-0 (10).png")



# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_texture_button_pressed() -> void:
	if InventorySingleton.WhichItem == preload("res://Textures/pixil-frame-0 (9).png"):
		$TextureButton.texture_normal = rednuttexture
		InventorySingleton.craftingboxtwostoreditem = 'Red Nut'
	elif InventorySingleton.WhichItem == preload("res://Textures/pixil-frame-0 (10).png"):
		$TextureButton.texture_normal = whitenuttexture
		InventorySingleton.craftingboxtwostoreditem = 'White Nut'
