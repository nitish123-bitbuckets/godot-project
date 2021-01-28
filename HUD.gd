extends CanvasLayer

signal start_game


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func show_message(text):
	$Message.text = text
	$Message.show()
	$MessageTimer.start()
	
func show_game_over():
	show_message("Game Over")
	# Wait until the MessageTimer has counted down.
	yield($MessageTimer, "timeout")

	$Message.text = "Burger Time!"
	$Message.show()
	# Make a one-shot timer and wait for it to finish.
	$StartButton.show()
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_MessageTimer_timeout():
	$Message.hide()
	pass # Replace with function body.


func _on_StartButton_pressed():
	$StartButton.hide()
	emit_signal("start_game")
	pass # Replace with function body.
