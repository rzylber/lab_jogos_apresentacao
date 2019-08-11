extends Node2D

var nextFase

func _on_Sound_finished():
	get_tree().change_scene("res://Fase" + String(nextFase + 1) + ".tscn")


func _on_Button2_button_up():
	nextFase = $OptionButton.selected
	print_debug(nextFase)
	$Sound.play()
