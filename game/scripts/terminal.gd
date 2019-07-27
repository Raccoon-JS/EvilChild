extends Node

var command = "null"
#var file_tree = {"/":["evilchild.zip"]} // map out the tree

func _ready():
	$screen/intro.add_text("AVAILABLE COMMANDS: quit, clear, list, cd, help, and unzip.\n" + "root@ruinx:~\n" + "$\n")
	pass # Replace with function body.

func _input(event):
	if event.is_action_pressed("enter"):
		command = $command_line.text
		
		$screen/intro.add_text("root@ruinx:~" + '\n' + "$ " + command + '\n')
		if command == "quit":
			get_tree().quit()
		elif command == "clear":
			$screen/intro.clear()
			$screen/intro.add_text("root@ruinx:~" + '\n' + "$ clear\n")
		else:
			$screen/intro.add_text("UNRECOGNIZABLE COMMAND LINE.\nTry entering AVAILABLE COMMANDS: quit, clear, list, cd, help, and unzip.\n")
	if event.is_action_released("enter"):
		$command_line.text = ""
	pass

#func _process(delta):
#	if delta:
#		