extends Node

var command = "null"
var command_history = []
var history_index = 0
#var file_tree = {"/":["evilchild.zip"]} // map out the tree

func _ready():
	$screen/intro.add_text("AVAILABLE COMMANDS: quit, clear, list, cd, help, and unzip.\n" + "root@ruinx:~\n" + "$\n")
	pass # Replace with function body.

func _input(event):
	if event.is_action_pressed("enter"):
		command = $command_line.text
		
		$screen/intro.add_text("root@ruinx:~" + '\n' + "$ " + command + '\n')
		command_history.push_back(command)
		if command == "quit":
			get_tree().quit()
		elif command == "clear":
			$screen/intro.clear()
			$screen/intro.add_text("root@ruinx:~" + '\n' + "$ clear\n")
		elif command == "help":
			var help = "quit - quit the system\n\nclear - clear the terminal screen\n\nunzip - open the compressed file\n\ncd - change directory\n\nlist - list out all the files in the directory\n"
			$screen/intro.add_text(help)
		else:
			$screen/intro.add_text("UNRECOGNIZABLE COMMAND LINE.\nTry entering AVAILABLE COMMANDS: quit, clear, list, cd, help, and unzip.\n")
	if event.is_action_released("enter"):
		$command_line.text = ""
	
	# Work-In-Progress
	"""
	if event.is_action_pressed(ui_up): # Up
		if command_history.size() > 0:
			history_index += 1
			$command_line.text = ""
			if history_index <= command_history.size():
				$command_line.text = command_history[command_history.size() - history_index]
			else:
				$command_line.text = ""
	if event.is_action_pressed(ui_down):
		if command_history.size() > 0: # Down
			history_index -= 1
			$command_line.text = ""
			if history_index < command_history.size():
				$command_line.text = command_history[command_history.size() - history_index]
			else:
				$command_line.text = ""
	"""
	pass
