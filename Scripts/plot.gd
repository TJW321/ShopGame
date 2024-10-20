extends Area2D

#Variables for plant growing stages in the plots and the maximum growth stage possible.
#This will probably need updating for different plant types
var growthstage = 0
var growthstageMAX = 3

#Variable to check whether plot is tilled or not
var IsPlotTilled = false

#Textures for untilled plot or tilled plot
var UntilledPlotTexture = preload("res://Textures/Untilled Plot Placeholder.png")
var TilledPlotTexture = preload("res://Textures/Tilled Plot Placeholder.png")

#Variables to hold the textures for each plant growth stage
var plantstage1texture = preload("res://Textures/pixil-frame-0 (1).png")
var plantstage2texture = preload("res://Textures/pixil-frame-0 (2).png")
var plantstage3texture = preload("res://Textures/pixil-frame-0 (4).png")

var ItemPlanted = "Nothing Yet"

#Variable to hold the item harvested amount in inventory
var inventory_seed_1 = 0


func _on_texture_button_pressed():
	if IsPlotTilled == false:
		$TextureButton.texture_normal = TilledPlotTexture
		IsPlotTilled = true
	elif IsPlotTilled == true && growthstage == 0 && InventorySingleton.WhichItem == preload("res://Textures/White Seed Placeholder.png"):
		$Timer.start()
		print("timer started")
		$TextureButton.texture_normal = plantstage1texture
		print("texture swapped")
		ItemPlanted = "White Seed"
	elif IsPlotTilled == true && growthstage == 0 && InventorySingleton.WhichItem == preload("res://Textures/Red Seed Placeholder.png"):
		$Timer.start()
		print("timer started")
		$TextureButton.texture_normal = plantstage1texture
		print("texture swapped")
		ItemPlanted = "Red Seed"
	elif growthstage == growthstageMAX && ItemPlanted == "White Seed": 
		$Timer.stop()
		print("timer stopped")
		$TextureButton.texture_normal = TilledPlotTexture
		InventorySingleton.inventory_white_nut_count += 1
		growthstage = 0
	elif growthstage == growthstageMAX && ItemPlanted == "Red Seed": 
		$Timer.stop()
		print("timer stopped")
		$TextureButton.texture_normal = TilledPlotTexture
		InventorySingleton.inventory_red_nut_count += 1
		growthstage = 0


func _on_timer_timeout():
	growthstage +=1
	print(growthstage)
	if growthstage == 1:
		$TextureButton.texture_normal = plantstage2texture
		$Timer.start()
	elif growthstage == 2:
		$TextureButton.texture_normal = plantstage3texture
		$Timer.start()
	elif growthstage == growthstageMAX:
		print ("max growth")
		$TextureButton.texture_normal = plantstage3texture
