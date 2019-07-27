extends Node

var command = ""
#var file_tree = {"/":["evilchild.zip"]} // map out the tree

func _ready():
	$screen/intro.add_text("root@ruinx:~" + '\n' + "$ Enter the command.\n")
	pass # Replace with function body.

func _input(event):
	if event.is_action_pressed("enter"):
		command = $command_line.text
		if command != "clear":
			$screen/intro.add_text("root@ruinx:~" + '\n' + "$ " + command + '\n')
	if event.is_action_released("enter"):
		$command_line.text = ""
	pass

func _process(delta):
	if delta:
		if command == "quit":
			get_tree().quit()
		if command == "clear":
			$screen/intro.clear()
			$screen/intro.add_text("root@ruinx:~" + '\n' + "$ clear\n")
	pass