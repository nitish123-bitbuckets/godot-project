extends Node2D

export(PackedScene) var Burger

func _on_ToppingTimer_timeout():
	var burger = Burger.instance()
	add_child(burger)
