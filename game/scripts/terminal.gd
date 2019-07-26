extends Node

func _ready():
	$vertical/intro.add_text( "Enter the command.")
	$vertical/command.text = "> "
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _input(event):
	if event.is_action_pressed("ui_accept"):
		$vertical/command.clear_undo_history()
		$vertical/intro.add_text($vertical/command.text)
	pass