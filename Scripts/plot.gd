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

var PlantBlueStage1texture = preload("res://Textures/Plant Icons/Blue/Blue Plant Stage 1.png")
var PlantBlueStage2texture = preload("res://Textures/Plant Icons/Blue/Blue Plant Stage 2.png")
var PlantBlueStage3texture = preload("res://Textures/Plant Icons/Blue/Blue Plant Stage 3.png")
var PlantBlueStageMAXtexture = preload("res://Textures/Plant Icons/Blue/Blue Plant MAX.png")

var PlantGreenStage1texture = preload("res://Textures/Plant Icons/Green/Green Plant Stage 1.png")
var PlantGreenStage2texture = preload("res://Textures/Plant Icons/Green/Green Plant Stage 2.png")
var PlantGreenStage3texture = preload("res://Textures/Plant Icons/Green/Green Plant Stage 3.png")
var PlantGreenStageMAXtexture = preload("res://Textures/Plant Icons/Green/Green Plant MAX.png")

var PlantYellowStage1texture = preload("res://Textures/Plant Icons/Yellow/Yellow Plant Stage 1.png")
var PlantYellowStage2texture = preload("res://Textures/Plant Icons/Yellow/Yellow Plant Stage 2.png")
var PlantYellowStage3texture = preload("res://Textures/Plant Icons/Yellow/Yellow Plant Stage 3.png")
var PlantYellowStageMAXtexture = preload("res://Textures/Plant Icons/Yellow/Yellow Plant MAX.png")

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
	elif IsPlotTilled == true && growthstage == 0 && InventorySingleton.WhichItem == preload("res://Textures/Seeds/Blue Seed.png"):
		$Timer.start()
		print("timer started")
		$TextureButton.texture_normal = PlantBlueStage1texture
		print("texture swapped")
		ItemPlanted = "Blue Seed"
		InventorySingleton.WhichItem = null
	elif IsPlotTilled == true && growthstage == 0 && InventorySingleton.WhichItem == preload("res://Textures/Seeds/Green Seed.png"):
		$Timer.start()
		print("timer started")
		$TextureButton.texture_normal = PlantGreenStage1texture
		print("texture swapped")
		ItemPlanted = "Green Seed"
		InventorySingleton.WhichItem = null
	elif IsPlotTilled == true && growthstage == 0 && InventorySingleton.WhichItem == preload("res://Textures/Seeds/Yellow Seed.png"):
		$Timer.start()
		print("timer started")
		$TextureButton.texture_normal = PlantYellowStage1texture
		print("texture swapped")
		ItemPlanted = "Yellow Seed"
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
	elif growthstage == growthstageMAX && ItemPlanted == "Blue Seed": 
		$Timer.stop()
		print("timer stopped")
		$TextureButton.texture_normal = TilledPlotTexture
		InventorySingleton.inventory_blue_nut_count += 1
		growthstage = 0
	elif growthstage == growthstageMAX && ItemPlanted == "Green Seed": 
		$Timer.stop()
		print("timer stopped")
		$TextureButton.texture_normal = TilledPlotTexture
		InventorySingleton.inventory_green_nut_count += 1
		growthstage = 0
	elif growthstage == growthstageMAX && ItemPlanted == "Yellow Seed": 
		$Timer.stop()
		print("timer stopped")
		$TextureButton.texture_normal = TilledPlotTexture
		InventorySingleton.inventory_yellow_nut_count += 1
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
	elif growthstage == 1 && ItemPlanted == "Blue Seed":
		$TextureButton.texture_normal = PlantBlueStage2texture
		$Timer.start()
		print("Blue growth stage 2 complete")
	elif growthstage == 1 && ItemPlanted == "Green Seed":
		$TextureButton.texture_normal = PlantGreenStage2texture
		$Timer.start()
		print("Green growth stage 2 complete")
	elif growthstage == 1 && ItemPlanted == "Yellow Seed":
		$TextureButton.texture_normal = PlantYellowStage2texture
		$Timer.start()
		print("Yellow growth stage 2 complete")
	elif growthstage == 2 && ItemPlanted == "White Seed":
		$TextureButton.texture_normal = PlantWhitestage3texture
		$Timer.start()
		print("White growth stage 3 complete")
	elif growthstage == 2 && ItemPlanted == "Red Seed":
		$TextureButton.texture_normal = PlantRedStage3texture
		$Timer.start()
		print("Red growth stage 3 complete")
	elif growthstage == 2 && ItemPlanted == "Blue Seed":
		$TextureButton.texture_normal = PlantBlueStage3texture
		$Timer.start()
		print("Blue growth stage 3 complete")
	elif growthstage == 2 && ItemPlanted == "Green Seed":
		$TextureButton.texture_normal = PlantGreenStage3texture
		$Timer.start()
		print("Green growth stage 3 complete")
	elif growthstage == 2 && ItemPlanted == "Yellow Seed":
		$TextureButton.texture_normal = PlantYellowStage3texture
		$Timer.start()
		print("Yellow growth stage 3 complete")
	elif growthstage == 3 && ItemPlanted == "White Seed":
		print ("white growth stage 4 Complete")
		$Timer.start()
	elif growthstage == 3 && ItemPlanted == "Red Seed":
		print ("Red growth stage 4 Complete")
		$Timer.start()
	elif growthstage == 3 && ItemPlanted == "Blue Seed":
		print ("Blue growth stage 4 Complete")
		$Timer.start()
	elif growthstage == 3 && ItemPlanted == "Green Seed":
		print ("Green growth stage 4 Complete")
		$Timer.start()
	elif growthstage == 3 && ItemPlanted == "Yellow Seed":
		print ("Yellow growth stage 4 Complete")
		$Timer.start()
	elif growthstage == growthstageMAX && ItemPlanted == "White Seed":
		print ("max growth")
		$TextureButton.texture_normal = PlantWhitestageMAXtexture
	elif growthstage == growthstageMAX && ItemPlanted == "Red Seed":
		print ("max growth")
		$TextureButton.texture_normal = PlantRedStageMAXtexture
	elif growthstage == growthstageMAX && ItemPlanted == "Blue Seed":
		print ("max growth")
		$TextureButton.texture_normal = PlantBlueStageMAXtexture
	elif growthstage == growthstageMAX && ItemPlanted == "Green Seed":
		print ("max growth")
		$TextureButton.texture_normal = PlantGreenStageMAXtexture
	elif growthstage == growthstageMAX && ItemPlanted == "Yellow Seed":
		print ("max growth")
		$TextureButton.texture_normal = PlantYellowStageMAXtexture
