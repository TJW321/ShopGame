extends Area2D

#Variables for plant growing stages in the plots and the maximum growth stage possible.
#This will probably need updating for different plant types
var growthstage = 0
var growthstageMAX = 4

#Variable to check whether plot is tilled or not
var IsPlotTilled = false

#Textures for untilled plot or tilled plot
var UntilledPlotTexture = preload("res://Textures/Plots/Untilled Plot Placeholder.png")
var TilledPlotTexture = preload("res://Textures/Plots/Tilled Plot Placeholder.png")

#Variables to hold the textures for each plant growth stage
var PlantWhitestage1texture = preload("res://Textures/Plant Icons/White/White Plant Stage 1.png")
var PlantWhitestage2texture = preload("res://Textures/Plant Icons/White/White Plant Stage 2.png")
var PlantWhitestage3texture = preload("res://Textures/Plant Icons/White/White Plant Stage 3.png")
var PlantWhitestageMAXtexture = preload("res://Textures/Plant Icons/White/White Plant MAX.png")

var PlantRedStage1texture = preload("res://Textures/Plant Icons/Red/RED Plant Stage 1.png")
var PlantRedStage2texture = preload("res://Textures/Plant Icons/Red/RED Plant Stage 2.png")
var PlantRedStage3texture = preload("res://Textures/Plant Icons/Red/RED Plant Stage 3.png")
var PlantRedStageMAXtexture = preload("res://Textures/Plant Icons/Red/RED Plant MAX.png")

var ItemPlanted = "Nothing Yet"

#Variable to hold the item harvested amount in inventory
var inventory_seed_1 = 0


func _on_texture_button_pressed():
	if IsPlotTilled == false:
		$TextureButton.texture_normal = TilledPlotTexture
		IsPlotTilled = true
	elif IsPlotTilled == true && growthstage == 0 && InventorySingleton.WhichItem == preload("res://Textures/Seeds/White Seed.png"):
		$Timer.start()
		print("timer started")
		$TextureButton.texture_normal = PlantWhitestage1texture
		print("texture swapped")
		ItemPlanted = "White Seed"
		InventorySingleton.WhichItem = null
	elif IsPlotTilled == true && growthstage == 0 && InventorySingleton.WhichItem == preload("res://Textures/Seeds/Red Seed.png"):
		$Timer.start()
		print("timer started")
		$TextureButton.texture_normal = PlantRedStage1texture
		print("texture swapped")
		ItemPlanted = "Red Seed"
		InventorySingleton.WhichItem = null
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
	if growthstage == 1 && ItemPlanted == "White Seed":
		$TextureButton.texture_normal = PlantWhitestage2texture
		$Timer.start()
		print("white growth stage 2 complete")
	elif growthstage == 1 && ItemPlanted == "Red Seed":
		$TextureButton.texture_normal = PlantRedStage2texture
		$Timer.start()
		print("Red growth stage 2 complete")
	elif growthstage == 2 && ItemPlanted == "White Seed":
		$TextureButton.texture_normal = PlantWhitestage3texture
		$Timer.start()
		print("White growth stage 3 complete")
	elif growthstage == 2 && ItemPlanted == "Red Seed":
		$TextureButton.texture_normal = PlantRedStage3texture
		$Timer.start()
		print("Red growth stage 3 complete")
	elif growthstage == 3 && ItemPlanted == "White Seed":
		print ("white growth stage 4 Complete")
		$Timer.start()
	elif growthstage == 3 && ItemPlanted == "Red Seed":
		print ("Red growth stage 4 Complete")
		$Timer.start()
	elif growthstage == growthstageMAX && ItemPlanted == "White Seed":
		print ("max growth")
		$TextureButton.texture_normal = PlantWhitestageMAXtexture
	elif growthstage == growthstageMAX && ItemPlanted == "Red Seed":
		print ("max growth")
		$TextureButton.texture_normal = PlantRedStageMAXtexture
