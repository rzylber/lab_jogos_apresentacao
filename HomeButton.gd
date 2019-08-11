extends Node2D

func _on_Button_button_up():
	$Sound.play()


func _on_AudioStreamPlayer_finished():
	get_tree().change_scene("res://MainMenu.tscn")
