extends Node

#Scene Transitions - Get Screens ready on game launch
@onready var GardenView = $GardenView
@onready var WorkshopView = $WorkshopView
@onready var ShopView = $ShopView

# Sets the GardenView to visible on games start.
func _ready():
	GardenView.visible = true

#Functions to play the animations to slide the screen around between the rooms
func GardenViewToWorkshopView():
	$ScreenTransitionAnimationPlayer.play("GardenToWorkshop")

func WorkshopViewToGardenView():
	$ScreenTransitionAnimationPlayer.play("WorkshopToGarden")

func WorkshopViewToShopView():
	$ScreenTransitionAnimationPlayer.play("WorkshopToShop")

func ShopViewToWorkshopView():
	$ScreenTransitionAnimationPlayer.play("ShopToWorkshop")
