class_name GitStatusTestOs
extends Node

@export var label: Label3D

func _ready():
	run_git_status()

func run_git_status():
	var output: Array = []
	var exit_code: int = OS.execute("git", ["status"], output, true)

	print("Exit code: ", exit_code)

	var text := "No output"
	if output.size() > 0:
		text = output[0]

	print("Git output:\n", text)

	if label:
		label.text = text
