extends Node

class_name GameHandler

signal toggle_game_paused(is_paused : bool)

@export var pause_menu: Control
#@export var load_menu: Control
@export var options_menu: Control
@export var HUD: Control

var game_paused: bool = false:
	get:
		return game_paused
	set(value):
		game_paused = value
		get_tree().paused = game_paused
		emit_signal("toggle_game_paused", game_paused)

func _input(event: InputEvent):
	if(event.is_action_pressed("pause_menu")):
		game_paused = !game_paused
		show_mouse()

func switch_menu_pause():
	pause_menu.switch_menu()

#func switch_menu_load():
	#load_menu.switch_menu()

func switch_menu_options():
	options_menu.switch_menu()

func show_mouse():
	if game_paused:
		Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
	else:
		Input.mouse_mode = Input.MOUSE_MODE_CAPTURED
