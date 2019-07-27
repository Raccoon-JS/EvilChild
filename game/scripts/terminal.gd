extends Node

var command = ""

func _ready():
	$intro.add_text("$ Enter the command.\n")
	pass # Replace with function body.

func _input(event):
	if event.is_action_pressed("enter"):
		command = $command_line.text
		if command != "clear":
			$intro.add_text("$ " + command + '\n')
	if event.is_action_released("enter"):
		$command_line.text = ""
	pass

func _process(delta):
	if delta:
		if command == "quit":
			get_tree().quit()
		if command == "clear":
			$intro.clear()
	pass